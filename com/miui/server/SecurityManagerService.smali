.class public Lcom/miui/server/SecurityManagerService;
.super Lmiui/security/ISecurityManager$Stub;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SecurityManagerService$PackageSetting;,
        Lcom/miui/server/SecurityManagerService$SettingsObserver;,
        Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;,
        Lcom/miui/server/SecurityManagerService$MyPackageMonitor;,
        Lcom/miui/server/SecurityManagerService$AppItem;,
        Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;,
        Lcom/miui/server/SecurityManagerService$UserState;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "classname"

.field private static final CLASS_NAMES:Ljava/lang/String; = "classnames"

.field private static final DEBUG:Z = false

.field private static final DEF_BROWSER_COUNT:Ljava/lang/String; = "miui.sec.defBrowser"

.field public static final INSTALL_FULL_APP:I = 0x4000

.field public static final INSTALL_REASON_USER:I = 0x4

.field private static final LEADCORE:Ljava/lang/String; = "leadcore"

.field public static final LOCK_TIME_OUT:J = 0xea60L

.field private static final MSG_SHOW_DIALOG:I = 0x1

.field private static final MTK:Ljava/lang/String; = "mediatek"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PACKAGE_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final PKG_BROWSER:Ljava/lang/String; = "com.android.browser"

.field private static final REMVOE_AC_PACKAGE:I = 0x4

.field private static final RTC_POWEROFF_WAKEUP_MTK:I = 0x8

.field private static final SYS_APP_CRACKED:I = 0x1

.field private static final SYS_APP_NOT_CRACKED:I = 0x0

.field private static final SYS_APP_UNINIT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SecurityManagerService"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final UPDATE_VERSION:Ljava/lang/String; = "1.0"

.field private static final WAKEALARM_PATH_OF_LEADCORE:Ljava/lang/String; = "/sys/comip/rtc_alarm"

.field private static final WAKEALARM_PATH_OF_QCOM:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"

.field private static final WRITE_BOOTTIME_DELAY:I = 0x3e8

.field private static final WRITE_BOOT_TIME:I = 0x3

.field private static final WRITE_SETTINGS:I = 0x1

.field private static final WRITE_SETTINGS_DELAY:I = 0x3e8

.field private static final WRITE_WAKE_UP_TIME:I = 0x2

.field private static mAppRunningControlService:Lcom/miui/server/AppRunningControlService;


# instance fields
.field private mAccessController:Lcom/miui/server/AccessController;

.field private mAom:Landroid/app/AppOpsManager;

.field private mAppRunningControlBinder:Landroid/os/IBinder;

.field private mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

.field private mContext:Landroid/content/Context;

.field private mDialogFlag:Z

.field private mFingerprintNotify:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIncompatibleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUpdated:Z

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mRegistrantLock:Ljava/lang/Object;

.field private mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

.field private mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

.field private mSettingsFile:Lcom/android/internal/os/AtomicFile;

.field private mSettingsObserver:Lcom/miui/server/SecurityManagerService$SettingsObserver;

.field private mSysAppCracked:I

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserStateLock:Ljava/lang/Object;

.field final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/server/SecurityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeTime:J

.field private mWakeUpFile:Lcom/android/internal/os/AtomicFile;

.field private mWakeUpTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sGoogleBaseService:Lmiui/security/ISecurityCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 415
    const-string/jumbo v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyCore"    # Z

    .line 418
    invoke-direct {p0}, Lmiui/security/ISecurityManager$Stub;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService;->mDialogFlag:Z

    .line 165
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 175
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    .line 178
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    .line 180
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    .line 253
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    .line 419
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 420
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 421
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 422
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "miui-packages.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    .line 425
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SecurityWriteHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 426
    .local v2, "securityWriteHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 427
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 428
    .local v3, "looper":Landroid/os/Looper;
    new-instance v4, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    .line 429
    new-instance v4, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;-><init>(Lcom/miui/server/SecurityManagerService;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 430
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v6}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 431
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readSettings()V

    .line 433
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->updateXSpaceSettings()V

    .line 435
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->initForKK()V

    .line 437
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    .line 438
    new-instance v4, Lcom/android/internal/os/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "miui-wakeuptime.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    .line 439
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime()V

    .line 442
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V

    .line 443
    new-instance v4, Lcom/miui/server/AccessController;

    invoke-direct {v4, p1, v3}, Lcom/miui/server/AccessController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    .line 445
    new-instance v4, Lcom/miui/server/SecurityManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v5, p1}, Lcom/miui/server/SecurityManagerService$SettingsObserver;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSettingsObserver:Lcom/miui/server/SecurityManagerService$SettingsObserver;

    .line 446
    monitor-enter p0

    .line 447
    :try_start_be
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 448
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 449
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_be .. :try_end_c6} :catchall_131

    .line 450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-eq v0, v4, :cond_d2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-ne v0, v4, :cond_fe

    :cond_d2
    const-string v0, "hennessy"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 451
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    const-string/jumbo v0, "kenzo"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 452
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    const-string v0, "ido"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 453
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    const-string v0, "aqua"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 454
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 455
    :cond_fb
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    .line 457
    :cond_fe
    new-instance v0, Lcom/miui/server/AppRunningControlService;

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/miui/server/AppRunningControlService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    .line 458
    sget-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    invoke-virtual {v0}, Lcom/miui/server/AppRunningControlService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlBinder:Landroid/os/IBinder;

    .line 459
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lmiui/security/WakePathChecker;->init(Landroid/content/Context;)V

    .line 462
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->resetDefaultBrowser(Landroid/content/Context;)V

    .line 465
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/RestrictAppNetManager;->init(Landroid/content/Context;)V

    .line 468
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/server/AccessController;->updatePasswordTypeForPattern(I)V

    .line 470
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/InputMethodHelper;->init(Landroid/content/Context;)V

    .line 471
    return-void

    .line 449
    :catchall_131
    move-exception v0

    :try_start_132
    monitor-exit p0
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_131

    throw v0
.end method

.method public static Libcore_Os_getFileLastStatusChangedTime(Ljava/lang/String;)J
    .registers 9
    .param p0, "path"    # Ljava/lang/String;

    .line 1954
    :try_start_0
    const-string/jumbo v0, "libcore.io.Libcore"

    const-string/jumbo v1, "os"

    const-string v2, "Llibcore/io/Os;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    .line 1955
    .local v0, "field":Lmiui/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1957
    .local v2, "o":Ljava/lang/Object;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_25

    .line 1958
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "lstat"

    const-string v5, "(Ljava/lang/String;)Landroid/system/StructStat;"

    invoke-static {v3, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 1958
    .local v3, "method":Lmiui/reflect/Method;
    goto :goto_32

    .line 1960
    .end local v3    # "method":Lmiui/reflect/Method;
    :cond_25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "lstat"

    const-string v5, "(Ljava/lang/String;)Llibcore/io/StructStat;"

    invoke-static {v3, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    .line 1962
    .restart local v3    # "method":Lmiui/reflect/Method;
    :goto_32
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v1, v2, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1963
    .end local v2    # "o":Ljava/lang/Object;
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "st_ctime"

    const-string v5, "J"

    invoke-static {v2, v4, v5}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v2

    move-object v0, v2

    .line 1964
    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_52

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    return-wide v4

    .line 1965
    .end local v0    # "field":Lmiui/reflect/Field;
    .end local v1    # "o":Ljava/lang/Object;
    .end local v3    # "method":Lmiui/reflect/Method;
    :catch_52
    move-exception v0

    .line 1966
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecurityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileChangeTime fail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static synthetic access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/server/SecurityManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->setDefaultBrowser()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessMiuiOptUri(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/server/SecurityManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # [Landroid/content/pm/Signature;

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->enforcePlatformSignature([Landroid/content/pm/Signature;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;
    .param p2, "x2"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # [Landroid/content/pm/Signature;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/server/SecurityManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->isOldmanMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Lcom/miui/server/SecurityManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # I

    .line 106
    iput p1, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/server/SecurityManagerService;)Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/server/SecurityManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkSysAppCrack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)Lmiui/security/ISecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lmiui/security/ISecurityCallback;

    .line 106
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/server/SecurityManagerService;)Lcom/android/internal/os/AtomicFile;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/server/SecurityManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/server/SecurityManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeWakeUpTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/server/SecurityManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;

    .line 106
    iget-wide v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # I

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService;
    .param p1, "x1"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method private allowSaveIconCache()Z
    .registers 3

    .line 1924
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2649

    if-eq v0, v1, :cond_18

    .line 1926
    invoke-static {}, Lcom/miui/server/SecurityManagerService;->canSaveExternalIconCache()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1924
    :goto_1b
    return v0
.end method

.method public static varargs callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 582
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 583
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 584
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 585
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static canSaveExternalIconCache()Z
    .registers 6

    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "miui_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->Libcore_Os_getFileLastStatusChangedTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 1948
    .local v0, "iconModifiedTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    return v2
.end method

.method private changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;
    .registers 4
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 1864
    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_a

    :cond_8
    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    .line 1865
    .local v0, "useId":I
    :goto_a
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    return-object v1
.end method

.method private checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 994
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 996
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 997
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    const/4 v3, 0x1

    if-nez v2, :cond_10

    .line 998
    return v3

    .line 1001
    :cond_10
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v2

    .line 1003
    .local v2, "lockMode":I
    iget-object v4, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1004
    .local v4, "pass":Z
    if-eqz v4, :cond_60

    const/4 v5, 0x2

    if-ne v2, v5, :cond_60

    .line 1005
    iget-object v5, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 1006
    .local v5, "lastTime":Ljava/lang/Long;
    if-eqz v5, :cond_3b

    .line 1007
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1008
    .local v6, "realtime":J
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_3b

    .line 1009
    const/4 v4, 0x0

    .line 1012
    .end local v6    # "realtime":J
    :cond_3b
    if-eqz v4, :cond_60

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_53

    const-string v6, "com.android.systemui"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 1013
    :cond_53
    iget-object v6, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    .end local v5    # "lastTime":Ljava/lang/Long;
    :cond_60
    if-nez v4, :cond_71

    if-ne v2, v3, :cond_71

    .line 1018
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1019
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1020
    const/4 v4, 0x1

    .line 1023
    :cond_71
    if-nez v4, :cond_84

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/miui/server/AccessController;->skipActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 1024
    const/4 v4, 0x1

    .line 1026
    :cond_84
    if-nez v4, :cond_8f

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v5, v3, p1, p2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 1027
    const/4 v4, 0x1

    .line 1029
    :cond_8f
    return v4
.end method

.method private checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)Z
    .registers 12

    const/4 v0, 0x1

    return v0
.end method

.method private checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method private checkGrantPermissionPkg()V
    .registers 5

    .line 2295
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 2296
    .local v0, "callingPackageName":Ljava/lang/String;
    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2300
    return-void

    .line 2297
    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to grant/revoke permission from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2298
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermission()V
    .registers 5

    .line 1515
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1517
    .local v0, "permission":I
    if-nez v0, :cond_b

    return-void

    .line 1518
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to change application state from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermissionByUid(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1707
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_b

    .line 1710
    return-void

    .line 1708
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no permission to read file for UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkSysAppCrack()Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method private checkSystemSelfProtection(Z)V
    .registers 3
    .param p1, "onlyCore"    # Z

    return-void
.end method

.method private checkWakePathPermission()V
    .registers 6

    .line 1715
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1715
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1717
    return-void
.end method

.method private checkWriteSecurePermission()V
    .registers 5

    .line 2112
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: attempt to change application privacy revoke state from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2112
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    return-void
.end method

.method private clearPassPackages(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1869
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x3e7

    if-eqz p1, :cond_c

    if-ne v0, p1, :cond_20

    .line 1870
    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1871
    .local v1, "userStateOwner":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1872
    .local v0, "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 1873
    .local v2, "passPackagesOwner":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 1874
    .local v3, "passPackagesXSpace":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1875
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1876
    .end local v0    # "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "userStateOwner":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "passPackagesOwner":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "passPackagesXSpace":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_29

    .line 1877
    :cond_20
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 1878
    .local v0, "passPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1880
    .end local v0    # "passPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_29
    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 9
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 613
    const/4 v0, -0x3

    if-eqz p0, :cond_31

    if-nez p1, :cond_6

    goto :goto_31

    .line 616
    :cond_6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 617
    .local v1, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_18

    aget-object v5, p0, v4

    .line 618
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 620
    :cond_18
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 621
    .local v2, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    move v5, v3

    :goto_1f
    if-ge v5, v4, :cond_29

    aget-object v6, p1, v5

    .line 622
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 621
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 625
    :cond_29
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 626
    return v3

    .line 628
    :cond_30
    return v0

    .line 614
    .end local v1    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v2    # "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_31
    :goto_31
    return v0
.end method

.method private enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "validSignatures"    # [Landroid/content/pm/Signature;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "checkEnabled"    # Z

    .line 633
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 636
    return-void

    .line 634
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System error: connot find system app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforcePlatformSignature([Landroid/content/pm/Signature;)V
    .registers 7
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .line 777
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 778
    .local v0, "platformSig":Landroid/content/pm/Signature;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 779
    .local v3, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 780
    return-void

    .line 778
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 783
    :cond_17
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System error: My heart is broken"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .registers 4
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 589
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 590
    .local v0, "transferUserState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_b

    .line 591
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 593
    :cond_b
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    return v1
.end method

.method private getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .registers 4
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 605
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 606
    .local v0, "transferUserState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_b

    .line 607
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 609
    :cond_b
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    return v1
.end method

.method private getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I
    .registers 4
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 597
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 598
    .local v0, "transferUserState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_b

    .line 599
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 601
    :cond_b
    iget v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    return v1
.end method

.method public static getAppRunningControlService()Lcom/miui/server/AppRunningControlService;
    .registers 1

    .line 2183
    sget-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    return-object v0
.end method

.method private getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1041
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1043
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :try_start_4
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 1044
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return v2

    .line 1045
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catch_d
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method private getApplicationMaskNotificationEnabledLocked(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1051
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1053
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :try_start_4
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 1054
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return v2

    .line 1055
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catch_d
    move-exception v1

    .line 1056
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method private declared-synchronized getBootTimeFromMap(Ljava/lang/String;)J
    .registers 4
    .param p1, "componentName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1646
    :try_start_1
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    goto :goto_18

    :cond_16
    const-wide/16 v0, 0x0

    :goto_18
    monitor-exit p0

    return-wide v0

    .end local p1    # "componentName":Ljava/lang/String;
    :catchall_1a
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/server/SecurityManagerService;
    throw p1
.end method

.method private getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;
    .registers 5
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;"
        }
    .end annotation

    .line 1385
    .local p1, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 1386
    .local v0, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    if-nez v0, :cond_11

    .line 1387
    new-instance v1, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v1, p0, p2}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    move-object v0, v1

    .line 1388
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    :cond_11
    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .registers 5
    .param p1, "userHandle"    # I

    .line 474
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$UserState;

    .line 475
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    if-nez v0, :cond_20

    .line 476
    new-instance v1, Lcom/miui/server/SecurityManagerService$UserState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$1;)V

    .line 477
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .local v1, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iput p1, v1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    .line 478
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 479
    :try_start_15
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    monitor-exit v2

    .line 482
    move-object v0, v1

    goto :goto_20

    .line 480
    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw v0

    .line 482
    .end local v1    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .restart local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_20
    :goto_20
    return-object v0
.end method

.method private getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .registers 4
    .param p1, "userHandle"    # I

    .line 492
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    .line 493
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_7
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/server/SecurityManagerService$UserState;

    monitor-exit v0

    return-object v1

    .line 495
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 3
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 502
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 503
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 504
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    .line 506
    return-void
.end method

.method private initForKK()V
    .registers 4

    .line 801
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_38

    .line 802
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAom:Landroid/app/AppOpsManager;

    .line 803
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecurityManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 804
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 805
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    .line 806
    new-instance v0, Lcom/miui/server/SecuritySmsHandler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    .line 808
    :cond_38
    return-void
.end method

.method private isOldmanMode()Z
    .registers 3

    .line 736
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 1854
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/16 v3, 0x3e7

    if-eq v0, v3, :cond_12

    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    if-nez v0, :cond_2c

    .line 1855
    :cond_12
    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1856
    .local v0, "userStateOwner":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v3

    .line 1857
    .local v3, "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v4, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    iget-object v5, v3, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-lez v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    return v1

    .line 1859
    .end local v0    # "userStateOwner":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v3    # "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_2c
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    return v1
.end method

.method private isSystemApp()Z
    .registers 8

    .line 1931
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1932
    .local v1, "uid":I
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1933
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    .line 1934
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1935
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1d

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_1c

    .line 1936
    return v6

    .line 1938
    :cond_1c
    return v0

    .line 1940
    .end local v1    # "uid":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1d
    move-exception v1

    .line 1941
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private minWakeUpTime(J)V
    .registers 13
    .param p1, "nowtime"    # J

    .line 1542
    const-wide/16 v0, 0x0

    .line 1543
    .local v0, "min":J
    const-wide/16 v2, 0x12c

    add-long/2addr v2, p1

    .line 1544
    .local v2, "rightBorder":J
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1545
    .local v5, "componentName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v6

    .line 1548
    .local v6, "tmp":J
    cmp-long v8, v6, p1

    if-ltz v8, :cond_35

    cmp-long v8, v6, v0

    if-ltz v8, :cond_2d

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_35

    .line 1549
    :cond_2d
    cmp-long v8, v6, v2

    if-ltz v8, :cond_33

    move-wide v8, v6

    goto :goto_34

    :cond_33
    move-wide v8, v2

    :goto_34
    move-wide v0, v8

    .line 1551
    .end local v5    # "componentName":Ljava/lang/String;
    .end local v6    # "tmp":J
    :cond_35
    goto :goto_f

    .line 1552
    :cond_36
    iput-wide v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    .line 1553
    return-void
.end method

.method private moveIconInner(Ljava/lang/String;)Z
    .registers 6
    .param p1, "srcIconPath"    # Ljava/lang/String;

    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1910
    invoke-static {p1}, Lmiui/os/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1911
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1912
    .local v2, "destPath":Ljava/lang/String;
    invoke-static {p1, v2}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1914
    if-eqz v0, :cond_26

    .line 1915
    invoke-static {v2}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    move-result v0

    .line 1917
    :cond_26
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->ensureMiuiVersionFlagExist(Landroid/content/Context;)V

    .line 1918
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 1920
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "destPath":Ljava/lang/String;
    :cond_2e
    return v0
.end method

.method private native nativeIsReleased()Z
.end method

.method private native nativeKillPackageProcesses(ILjava/lang/String;)V
.end method

.method private declared-synchronized putBootTimeToMap(Ljava/lang/String;J)V
    .registers 6
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J

    monitor-enter p0

    .line 1642
    :try_start_1
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1643
    monitor-exit p0

    return-void

    .line 1641
    .end local p1    # "componentName":Ljava/lang/String;
    .end local p2    # "time":J
    :catchall_c
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/miui/server/SecurityManagerService;
    throw p1
.end method

.method private readPackagesSettings(Ljava/io/FileInputStream;)V
    .registers 15
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1420
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1421
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1423
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1424
    .local v2, "eventType":I
    :goto_c
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_17

    if-eq v2, v3, :cond_17

    .line 1425
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_c

    .line 1428
    :cond_17
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1429
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "packages"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 1430
    const-string/jumbo v6, "updateVersion"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1431
    .local v6, "updateVersion":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-string v7, "1.0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1432
    iput-boolean v3, p0, Lcom/miui/server/SecurityManagerService;->mIsUpdated:Z

    .line 1434
    :cond_3b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1436
    :cond_3f
    if-ne v2, v4, :cond_b3

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v4, :cond_b3

    .line 1437
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1438
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 1439
    const-string/jumbo v7, "name"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1440
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v8, p0, v7}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    .line 1441
    .local v8, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    const/4 v9, 0x0

    .line 1442
    .local v9, "userHandle":I
    const-string/jumbo v10, "u"

    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1443
    .local v10, "userHandleStr":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_72

    .line 1444
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1446
    :cond_72
    const-string v11, "accessControl"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 1447
    const-string v11, "childrenControl"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    .line 1448
    const-string/jumbo v11, "maskNotification"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    .line 1449
    const-string/jumbo v11, "isPrivacyApp"

    invoke-interface {v0, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v8, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    .line 1451
    monitor-enter p0

    .line 1452
    :try_start_a5
    invoke-direct {p0, v9}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v11

    .line 1453
    .local v11, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v12, v11, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    .end local v11    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    monitor-exit p0

    goto :goto_b3

    :catchall_b0
    move-exception v1

    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_a5 .. :try_end_b2} :catchall_b0

    throw v1

    .line 1457
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .end local v9    # "userHandle":I
    .end local v10    # "userHandleStr":Ljava/lang/String;
    :cond_b3
    :goto_b3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1458
    if-ne v2, v3, :cond_3f

    .line 1460
    .end local v6    # "updateVersion":Ljava/lang/String;
    :cond_b9
    return-void
.end method

.method private readSettings()V
    .registers 5

    .line 1399
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1400
    return-void

    .line 1403
    :cond_d
    const/4 v0, 0x0

    .line 1405
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_e
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 1406
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->readPackagesSettings(Ljava/io/FileInputStream;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_22
    .catchall {:try_start_e .. :try_end_18} :catchall_20

    .line 1410
    if-eqz v0, :cond_30

    .line 1412
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 1414
    :goto_1d
    goto :goto_30

    .line 1413
    :catch_1e
    move-exception v1

    goto :goto_1d

    .line 1410
    :catchall_20
    move-exception v1

    goto :goto_31

    .line 1407
    :catch_22
    move-exception v1

    .line 1408
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v2, "SecurityManagerService"

    const-string v3, "Error reading package settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 1410
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_30

    .line 1412
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_1e

    goto :goto_1d

    .line 1417
    :cond_30
    :goto_30
    return-void

    .line 1410
    :goto_31
    if-eqz v0, :cond_38

    .line 1412
    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 1414
    goto :goto_38

    .line 1413
    :catch_37
    move-exception v2

    .line 1414
    :cond_38
    :goto_38
    throw v1
.end method

.method private readWakeUpTime()V
    .registers 4

    .line 1591
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1592
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1593
    return-void

    .line 1595
    :cond_12
    const/4 v0, 0x0

    .line 1597
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_13
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 1598
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime(Ljava/io/FileInputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_27
    .catchall {:try_start_13 .. :try_end_1d} :catchall_25

    .line 1602
    if-eqz v0, :cond_37

    .line 1604
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    .line 1606
    :goto_22
    goto :goto_37

    .line 1605
    :catch_23
    move-exception v1

    goto :goto_22

    .line 1602
    :catchall_25
    move-exception v1

    goto :goto_38

    .line 1599
    :catch_27
    move-exception v1

    .line 1600
    .local v1, "e":Ljava/lang/Exception;
    :try_start_28
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_25

    .line 1602
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_37

    .line 1604
    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_23

    goto :goto_22

    .line 1609
    :cond_37
    :goto_37
    return-void

    .line 1602
    :goto_38
    if-eqz v0, :cond_3f

    .line 1604
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 1606
    goto :goto_3f

    .line 1605
    :catch_3e
    move-exception v2

    .line 1606
    :cond_3f
    :goto_3f
    throw v1
.end method

.method private readWakeUpTime(Ljava/io/FileInputStream;)V
    .registers 11
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1612
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1613
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1615
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1616
    .local v2, "eventType":I
    :goto_c
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_17

    if-eq v2, v3, :cond_17

    .line 1617
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_c

    .line 1619
    :cond_17
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1620
    .local v5, "tagName":Ljava/lang/String;
    const-string v6, "classnames"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 1621
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1623
    :cond_27
    if-ne v2, v4, :cond_55

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v4, :cond_55

    .line 1624
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1625
    const-string v6, "classname"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 1626
    const-string/jumbo v6, "name"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1627
    .local v6, "componentName":Ljava/lang/String;
    new-instance v7, Ljava/lang/Long;

    const-string/jumbo v8, "time"

    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1628
    .local v7, "time":J
    invoke-direct {p0, v6, v7, v8}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    .line 1631
    .end local v6    # "componentName":Ljava/lang/String;
    .end local v7    # "time":J
    :cond_55
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1632
    if-ne v2, v3, :cond_27

    .line 1634
    :cond_5b
    return-void
.end method

.method private removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V
    .registers 4
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1152
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1153
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1154
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_18

    .line 1156
    :cond_13
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1158
    :goto_18
    return-void
.end method

.method private removePackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1507
    monitor-enter p0

    .line 1508
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1509
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 1511
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    monitor-exit p0

    .line 1512
    return-void

    .line 1511
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private resetDefaultBrowser(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 811
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1f

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_1f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_11

    goto :goto_1f

    .line 814
    :cond_11
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/server/SecurityManagerService$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/SecurityManagerService$2;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/content/Context;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 842
    return-void

    .line 812
    :cond_1f
    :goto_1f
    return-void
.end method

.method private saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 1894
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->allowSaveIconCache()Z

    move-result v0

    .line 1899
    .local v0, "allowSaveIcon":Z
    if-eqz v0, :cond_11

    .line 1900
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lmiui/content/res/ThemeRuntimeManager;->createTempIconFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 1901
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->moveIconInner(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1903
    .end local v1    # "path":Ljava/lang/String;
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private scheduleWriteSettings()V
    .registers 5

    .line 1394
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 1395
    :cond_a
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1396
    return-void
.end method

.method private setDefaultBrowser()V
    .registers 5

    .line 845
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 847
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v0, v1}, Landroid/content/pm/PackageManagerCompat;->getDefaultBrowserPackageNameAsUser(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, "defaultBrowser":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 849
    const-string v3, "com.android.browser"

    invoke-static {v0, v3, v1}, Landroid/content/pm/PackageManagerCompat;->setDefaultBrowserPackageNameAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    .line 853
    .end local v2    # "defaultBrowser":Ljava/lang/String;
    :cond_16
    goto :goto_20

    .line 851
    :catch_17
    move-exception v1

    .line 852
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerService"

    const-string/jumbo v3, "setDefaultBrowser"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method private setTimeBoot()V
    .registers 5

    .line 1556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1557
    .local v0, "now_time":J
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    monitor-enter v2

    .line 1558
    :try_start_a
    invoke-direct {p0, v0, v1}, Lcom/miui/server/SecurityManagerService;->minWakeUpTime(J)V

    .line 1559
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 1560
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteBootTime()V

    .line 1561
    return-void

    .line 1559
    :catchall_12
    move-exception v3

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v3
.end method

.method private sucheduleWriteBootTime()V
    .registers 3

    .line 1530
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 1531
    :cond_a
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    .line 1532
    return-void
.end method

.method private sucheduleWriteWakeUpTime()V
    .registers 3

    .line 1525
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 1526
    :cond_a
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    .line 1527
    return-void
.end method

.method private updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 6
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 509
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_lock_enabled"

    iget v2, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    iput-boolean v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    .line 511
    return-void
.end method

.method private updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 6
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 519
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_lock_convenient"

    iget v2, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    iput-boolean v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    .line 521
    return-void
.end method

.method private updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 6
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 514
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_lock_mode"

    iget v2, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    .line 516
    return-void
.end method

.method private updateAccessMiuiOptUri(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 13
    .param p1, "userState"    # Lcom/miui/server/SecurityManagerService$UserState;

    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_da

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 526
    const/4 v0, 0x0

    :try_start_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/16 v3, 0x4000

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-le v1, v2, :cond_53

    .line 527
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v2, v0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v2, v4

    const-class v8, Ljava/util/List;

    aput-object v8, v2, v5

    .line 534
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string v9, "installExistingPackageAsUser"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v10, "com.google.android.packageinstaller"

    aput-object v10, v1, v0

    .line 536
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x0

    aput-object v3, v1, v5

    .line 534
    invoke-static {v8, v9, v2, v1}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .end local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_a8

    :cond_53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_8b

    .line 538
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    .line 544
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string v8, "installExistingPackageAsUser"

    new-array v9, v5, [Ljava/lang/Object;

    const-string v10, "com.google.android.packageinstaller"

    aput-object v10, v9, v0

    .line 546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v4

    .line 544
    invoke-static {v2, v8, v1, v9}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v1    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_a8

    .line 548
    :cond_8b
    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    .line 552
    .restart local v1    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "installExistingPackageAsUser"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "com.google.android.packageinstaller"

    aput-object v5, v4, v0

    .line 554
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 552
    invoke-static {v2, v3, v1, v4}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a8} :catch_a9

    .line 559
    .end local v1    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_a8
    goto :goto_c4

    .line 557
    :catch_a9
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call installExistingPackageAsUser error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_da

    .line 563
    :try_start_ca
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 564
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/content/pm/PackageManagerCompat;->setDefaultBrowserPackageNameAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d5} :catch_d6

    .line 567
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_da

    .line 565
    :catch_d6
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_da
    :goto_da
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkPkgInstallerOptMode(Lcom/android/server/pm/PackageManagerService;)V

    .line 572
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkGTSSpecAppOptMode(Lcom/android/server/pm/PackageManagerService;)V

    .line 573
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->revokeAllPermssions(Lcom/android/server/pm/PackageManagerService;)V

    .line 574
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 575
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantMiuiPackageInstallerPermssions(Lcom/android/server/pm/PackageManagerService;)V

    .line 576
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->setDefaultBrowser()V

    .line 578
    :cond_f7
    return-void
.end method

.method private updateXSpaceSettings()V
    .registers 10

    .line 1833
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/miui/server/SecurityManagerService;->mIsUpdated:Z

    if-nez v0, :cond_5b

    .line 1834
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1835
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    const/16 v1, 0x3e7

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1836
    .local v1, "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1837
    .local v2, "packagesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1838
    .local v4, "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1839
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 1840
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 1841
    .local v6, "value":Lcom/miui/server/SecurityManagerService$PackageSetting;
    new-instance v7, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v7, p0, v5}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    .line 1842
    .local v7, "psXSpace":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v8, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    iput-boolean v8, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 1843
    iget-boolean v8, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    iput-boolean v8, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    .line 1844
    monitor-enter p0

    .line 1845
    :try_start_4d
    iget-object v8, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    monitor-exit p0

    goto :goto_57

    :catchall_54
    move-exception v3

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_54

    throw v3

    .line 1848
    .end local v4    # "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Lcom/miui/server/SecurityManagerService$PackageSetting;
    .end local v7    # "psXSpace":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :cond_57
    :goto_57
    goto :goto_1f

    .line 1849
    :cond_58
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 1851
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "userStateXSpace":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "packagesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;>;"
    :cond_5b
    return-void
.end method

.method private writeSettings()V
    .registers 11

    .line 1463
    const/4 v0, 0x0

    move-object v1, v0

    .line 1465
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1466
    .local v2, "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    monitor-enter p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_ea

    .line 1467
    :try_start_8
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1468
    .local v3, "size":I
    const/4 v4, 0x0

    .line 1468
    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_34

    .line 1469
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/server/SecurityManagerService$UserState;

    .line 1470
    .local v5, "state":Lcom/miui/server/SecurityManagerService$UserState;
    new-instance v6, Lcom/miui/server/SecurityManagerService$UserState;

    invoke-direct {v6, v0}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$1;)V

    .line 1471
    .local v6, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget v7, v5, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    iput v7, v6, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    .line 1472
    iget-object v7, v6, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    iget-object v9, v5, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1473
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    .end local v5    # "state":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v6    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1475
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_e7

    .line 1476
    :try_start_35
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 1477
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1478
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1479
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1480
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1481
    const-string/jumbo v4, "packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1482
    const-string/jumbo v4, "updateVersion"

    const-string v5, "1.0"

    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1483
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/server/SecurityManagerService$UserState;

    .line 1484
    .local v5, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v6, v5, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/server/SecurityManagerService$PackageSetting;

    .line 1485
    .local v7, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    const-string/jumbo v8, "package"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1486
    const-string/jumbo v8, "name"

    iget-object v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1487
    const-string v8, "accessControl"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1488
    const-string v8, "childrenControl"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1489
    const-string/jumbo v8, "maskNotification"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1490
    const-string/jumbo v8, "isPrivacyApp"

    iget-boolean v9, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1491
    const-string/jumbo v8, "u"

    iget v9, v5, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1492
    const-string/jumbo v8, "package"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1493
    .end local v7    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    goto :goto_7c

    .line 1494
    .end local v5    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :cond_d7
    goto :goto_66

    .line 1495
    :cond_d8
    const-string/jumbo v4, "packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1496
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1497
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_e6} :catch_ea

    .line 1503
    .end local v2    # "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_f9

    .line 1475
    .restart local v2    # "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    :catchall_e7
    move-exception v0

    :try_start_e8
    monitor-exit p0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    :try_start_e9
    throw v0
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ea} :catch_ea

    .line 1498
    .end local v2    # "userStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/server/SecurityManagerService$UserState;>;"
    :catch_ea
    move-exception v0

    .line 1499
    .local v0, "e1":Ljava/io/IOException;
    const-string v2, "SecurityManagerService"

    const-string v3, "Error writing package settings file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1500
    if-eqz v1, :cond_f9

    .line 1501
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1504
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_f9
    :goto_f9
    return-void
.end method

.method private writeWakeUpTime()V
    .registers 10

    .line 1564
    const/4 v0, 0x0

    move-object v1, v0

    .line 1566
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 1567
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1568
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1569
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1570
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1571
    const-string v3, "classnames"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1572
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1573
    .local v4, "componentName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_64

    .line 1575
    const-string v5, "classname"

    invoke-interface {v2, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1576
    const-string/jumbo v5, "name"

    invoke-interface {v2, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1577
    const-string/jumbo v5, "time"

    invoke-direct {p0, v4}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1578
    const-string v5, "classname"

    invoke-interface {v2, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1573
    .end local v4    # "componentName":Ljava/lang/String;
    :cond_64
    goto :goto_30

    .line 1580
    :cond_65
    const-string v3, "classnames"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1581
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1582
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_72} :catch_73

    .line 1587
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_7b

    .line 1583
    :catch_73
    move-exception v0

    .line 1584
    .local v0, "e1":Ljava/io/IOException;
    if-eqz v1, :cond_7b

    .line 1585
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1588
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_7b
    :goto_7b
    return-void
.end method


# virtual methods
.method public activityResume(Landroid/content/Intent;)I
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 1219
    move-object/from16 v2, p1

    const/4 v0, 0x0

    if-nez v2, :cond_8

    .line 1220
    return v0

    .line 1223
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1224
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_f

    .line 1225
    return v0

    .line 1228
    :cond_f
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_16

    .line 1230
    return v0

    .line 1233
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1234
    .local v5, "callingUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1235
    .local v6, "userId":I
    monitor-enter p0

    .line 1236
    :try_start_1f
    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v7

    .line 1237
    .local v7, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v8

    .line 1239
    .local v8, "enabled":Z
    if-nez v8, :cond_2b

    .line 1240
    monitor-exit p0

    return v0

    .line 1242
    :cond_2b
    iget-object v9, v1, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9, v4, v6}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result v9

    .line 1243
    .local v9, "packageUid":I
    if-eq v5, v9, :cond_35

    .line 1244
    monitor-exit p0

    return v0

    .line 1247
    :cond_35
    const/4 v0, 0x1

    .line 1248
    .local v0, "result":I
    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v10

    .line 1250
    .local v10, "lockMode":I
    iget-object v11, v7, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    .line 1251
    .local v11, "oldResumePackage":Ljava/lang/String;
    iput-object v4, v7, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    .line 1252
    iget-object v12, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 1253
    .local v12, "passPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x2

    if-ne v10, v13, :cond_5c

    .line 1254
    if-eqz v11, :cond_5c

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 1255
    iget-object v14, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    move-object/from16 v16, v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v14, v16

    invoke-virtual {v14, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    :cond_5c
    iget-object v13, v7, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {v1, v13, v4}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v13

    .line 1259
    .local v13, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v14, v13, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    if-nez v14, :cond_6d

    .line 1260
    if-nez v10, :cond_6b

    .line 1261
    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    .line 1263
    :cond_6b
    monitor-exit p0

    return v0

    .line 1265
    :cond_6d
    const/4 v14, 0x2

    or-int/2addr v0, v14

    .line 1267
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a6

    .line 1268
    if-ne v10, v14, :cond_9a

    .line 1269
    iget-object v14, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 1270
    .local v14, "lastTime":Ljava/lang/Long;
    if-eqz v14, :cond_96

    .line 1271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 1272
    .local v15, "realtime":J
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v17, v15, v17

    const-wide/32 v19, 0xea60

    cmp-long v17, v17, v19

    if-gez v17, :cond_96

    .line 1273
    or-int/lit8 v0, v0, 0x4

    .line 1274
    monitor-exit p0

    return v0

    .line 1277
    .end local v15    # "realtime":J
    :cond_96
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1278
    .end local v14    # "lastTime":Ljava/lang/Long;
    goto :goto_a6

    .line 1279
    :cond_9a
    or-int/lit8 v0, v0, 0x4

    .line 1280
    if-nez v10, :cond_a4

    .line 1281
    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    .line 1282
    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1284
    :cond_a4
    monitor-exit p0

    return v0

    .line 1288
    :cond_a6
    :goto_a6
    if-nez v10, :cond_ab

    .line 1289
    invoke-direct {v1, v6}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    .line 1291
    :cond_ab
    iget-object v14, v7, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 1292
    or-int/lit8 v0, v0, 0x8

    .line 1293
    monitor-exit p0

    return v0

    .line 1296
    :cond_b7
    const/4 v14, 0x1

    if-ne v10, v14, :cond_c6

    .line 1297
    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v15

    if-eqz v15, :cond_c6

    .line 1298
    invoke-direct {v1, v7}, Lcom/miui/server/SecurityManagerService;->isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v15

    if-nez v15, :cond_d6

    :cond_c6
    iget-object v15, v1, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    .line 1299
    invoke-virtual {v15, v2, v4}, Lcom/miui/server/AccessController;->skipActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d6

    iget-object v15, v1, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    .line 1300
    invoke-virtual {v15, v14, v4, v2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_d8

    .line 1301
    :cond_d6
    or-int/lit8 v0, v0, 0x4

    .line 1304
    :cond_d8
    monitor-exit p0

    return v0

    .line 1305
    .end local v0    # "result":I
    .end local v7    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v8    # "enabled":Z
    .end local v9    # "packageUid":I
    .end local v10    # "lockMode":I
    .end local v11    # "oldResumePackage":Ljava/lang/String;
    .end local v12    # "passPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catchall_da
    move-exception v0

    monitor-exit p0
    :try_end_dc
    .catchall {:try_start_1f .. :try_end_dc} :catchall_da

    throw v0
.end method

.method public addAccessControlPass(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 901
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 902
    .local v0, "callingUserId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->addAccessControlPassForUser(Ljava/lang/String;I)V

    .line 903
    return-void
.end method

.method public addAccessControlPassForUser(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 907
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 908
    monitor-enter p0

    .line 909
    :try_start_4
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 910
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    .line 911
    .local v1, "lockMode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 912
    iget-object v2, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    :cond_1c
    iget-object v2, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 915
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "lockMode":I
    monitor-exit p0

    .line 916
    return-void

    .line 915
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public addMiuiFirewallSharedUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 1973
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1974
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiNetworkManagementService;->addMiuiFirewallSharedUid(I)Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2066
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2067
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    if-nez v0, :cond_14

    .line 2068
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    .line 2070
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2072
    .local v0, "identity":J
    :try_start_18
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 2074
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2072
    return v2

    .line 2074
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 927
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 928
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 929
    :try_start_5
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 930
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 935
    monitor-enter p0

    .line 936
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 937
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1169
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1170
    invoke-static {p3}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p3

    .line 1171
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/AccessController;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 9
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I

    .line 1770
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 1771
    return v1

    .line 1775
    :cond_a
    monitor-enter p0

    .line 1776
    :try_start_b
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, v1, p2, p3}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    .line 1777
    .local v0, "ret":Z
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_30

    .line 1779
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    .line 1780
    invoke-static {v2, p2, v3}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_2f

    .line 1784
    :cond_24
    if-nez v0, :cond_2e

    .line 1785
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Lmiui/security/WakePathChecker;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1787
    :cond_2e
    return v0

    .line 1781
    :cond_2f
    :goto_2f
    return v1

    .line 1777
    .end local v0    # "ret":Z
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 956
    monitor-enter p0

    .line 957
    :try_start_1
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 958
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 886
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1}, Lcom/miui/server/SecuritySmsHandler;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump SecurityManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    return-void

    .line 194
    :cond_2f
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/security/WakePathChecker;->dump(Ljava/io/PrintWriter;)V

    .line 195
    return-void
.end method

.method public finishAccessControl(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1204
    if-nez p1, :cond_6

    .line 1205
    return-void

    .line 1207
    :cond_6
    monitor-enter p0

    .line 1208
    :try_start_7
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1209
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1211
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 1212
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1213
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1214
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit p0

    .line 1215
    return-void

    .line 1214
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public getAccessControlPasswordType(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 1182
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1183
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    .line 1184
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1}, Lcom/miui/server/AccessController;->getAccessControlPasswordType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllPrivacyApps(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2269
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2270
    monitor-enter p0

    .line 2271
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2272
    .local v0, "privacyAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 2273
    .local v1, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    .line 2274
    .local v2, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2275
    .local v3, "pkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_3c

    .line 2277
    .local v5, "pkgName":Ljava/lang/String;
    :try_start_23
    iget-object v6, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v6, v5}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v6

    .line 2278
    .local v6, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v7, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    if-eqz v7, :cond_30

    .line 2279
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_30} :catch_31
    .catchall {:try_start_23 .. :try_end_30} :catchall_3c

    .line 2283
    .end local v6    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :cond_30
    goto :goto_39

    .line 2281
    :catch_31
    move-exception v6

    .line 2282
    .local v6, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v7, "SecurityManagerService"

    const-string v8, "getAllPrivacyApps error"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2284
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_39
    goto :goto_17

    .line 2285
    :cond_3a
    monitor-exit p0

    return-object v0

    .line 2286
    .end local v0    # "privacyAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/server/SecurityManagerService$PackageSetting;>;"
    .end local v3    # "pkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public getAppPermissionControlOpen(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 1792
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 1793
    return v1

    .line 1795
    :cond_a
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1796
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    if-eqz v0, :cond_15

    .line 1797
    # getter for: Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService$UserState;->access$2200(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    return v1

    .line 1799
    :cond_15
    return v1
.end method

.method public getAppRunningControlIBinder()Landroid/os/IBinder;
    .registers 2

    .line 2179
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1034
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1035
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 1036
    :try_start_5
    invoke-direct {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 1037
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 942
    monitor-enter p0

    .line 943
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 944
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1310
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1311
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 1313
    :try_start_5
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1314
    .local v1, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v2

    .line 1315
    .local v2, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v3, v2, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_15
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit p0

    return v3

    .line 1319
    .end local v1    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catchall_13
    move-exception v1

    goto :goto_19

    .line 1316
    :catch_15
    move-exception v1

    .line 1317
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 1319
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_13

    throw v1
.end method

.method public getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 949
    monitor-enter p0

    .line 950
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->getApplicationMaskNotificationEnabledLocked(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 951
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 1815
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getGameMode(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 986
    monitor-enter p0

    .line 987
    :try_start_1
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result v0

    move p1, v0

    .line 988
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 989
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z

    monitor-exit p0

    return v1

    .line 990
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getGoogleBaseService()Lmiui/security/ISecurityCallback;
    .registers 2

    .line 2061
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    return-object v0
.end method

.method public getIncompatibleAppList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2003
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2004
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 2005
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 7
    .param p1, "pid"    # I

    .line 865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 866
    .local v0, "callingUid":I
    if-eqz v0, :cond_36

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_36

    .line 868
    :try_start_e
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 869
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 870
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_2f

    array-length v3, v2

    if-nez v3, :cond_1e

    goto :goto_2f

    .line 873
    :cond_1e
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 874
    .local v3, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2e

    .line 875
    const-string v4, ""

    return-object v4

    .line 879
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2e
    goto :goto_36

    .line 871
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "packages":[Ljava/lang/String;
    :cond_2f
    :goto_2f
    const-string v3, ""
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_32

    return-object v3

    .line 877
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "packages":[Ljava/lang/String;
    :catch_32
    move-exception v1

    .line 878
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    return-object v2

    .line 881
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_36
    :goto_36
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPermissionFlagsAsUser(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2337
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkGrantPermissionPkg()V

    .line 2338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2340
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 2342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2340
    return v2

    .line 2342
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSecondSpaceId()I
    .registers 7

    .line 2193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2195
    .local v0, "callingId":J
    :try_start_4
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "second_user_id"

    const/16 v4, -0x2710

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 2198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2195
    return v2

    .line 2198
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getStickWindowName(Ljava/lang/String;)Z
    .registers 4
    .param p1, "component"    # Ljava/lang/String;

    .line 2228
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gamebox_stick"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public getSysAppCracked()I
    .registers 2

    .line 1820
    iget v0, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return v0
.end method

.method public getTopActivity()Landroid/os/IBinder;
    .registers 7

    .line 2157
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2158
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getTopRunningActivityInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 2159
    .local v0, "topActivity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_49

    .line 2160
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2161
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2162
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_49

    .line 2163
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2164
    .local v3, "clsName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2165
    .local v4, "pkgName":Ljava/lang/String;
    const-string v5, "com.google.android.packageinstaller"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2166
    const-string v5, "com.android.packageinstaller.InstallAppProgress"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const-string v5, "com.android.packageinstaller.InstallSuccess"

    .line 2167
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const-string v5, "com.android.packageinstaller.PackageInstallerActivity"

    .line 2168
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 2169
    :cond_3f
    const-string/jumbo v5, "token"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 2170
    .local v5, "token":Landroid/os/IBinder;
    return-object v5

    .line 2175
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "clsName":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "token":Landroid/os/IBinder;
    :cond_49
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 1756
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1758
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/WakePathChecker;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2010
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 2012
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceCompat;->getWakePathComponents(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2013
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lmiui/security/WakePathComponent;>;"
    if-nez v0, :cond_d

    .line 2014
    const/4 v1, 0x0

    return-object v1

    .line 2016
    :cond_d
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .registers 5
    .param p1, "componentName"    # Ljava/lang/String;

    .line 1637
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 1825
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1826
    const-string v0, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1829
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/pm/PackageManagerServicePermissionProxy;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1830
    return-void

    .line 1827
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support permssion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1345
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1346
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1347
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, p1, v0}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result v2

    .line 1348
    .local v2, "packageUid":I
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_15

    if-eq v2, v1, :cond_15

    .line 1349
    return-void

    .line 1351
    :cond_15
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1352
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v4, :cond_1f

    .line 1353
    return-void

    .line 1356
    :cond_1f
    if-eq v1, v3, :cond_30

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_28

    goto :goto_30

    .line 1357
    :cond_28
    new-instance v3, Ljava/lang/SecurityException;

    const-string v5, "grantRuntimePermission Permission DENIED"

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1360
    :cond_30
    :goto_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1362
    .local v5, "identity":J
    :try_start_34
    invoke-static {p1, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermission(Ljava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3c

    .line 1364
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1365
    nop

    .line 1366
    return-void

    .line 1364
    :catchall_3c
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public grantRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2304
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkGrantPermissionPkg()V

    .line 2305
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2307
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 2309
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2310
    nop

    .line 2311
    return-void

    .line 2309
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public haveAccessControlPassword(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1176
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    .line 1177
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1}, Lcom/miui/server/AccessController;->haveAccessControlPassword(I)Z

    move-result v0

    return v0
.end method

.method public isAllowStartService(Landroid/content/Intent;I)Z
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 2151
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2152
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public isAppHide()Z
    .registers 2

    .line 2093
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v0

    return v0
.end method

.method public isAppPrivacyEnabled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2143
    .local v0, "identity":J
    :try_start_a
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "privacy_status_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_2f

    if-eqz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    .line 2145
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2143
    return v4

    .line 2145
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2139
    .end local v0    # "identity":J
    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "packageName can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFunctionOpen()Z
    .registers 2

    .line 2098
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageHideManager;->isFunctionOpen()Z

    move-result v0

    return v0
.end method

.method public isPrivacyApp(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2254
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2255
    monitor-enter p0

    .line 2256
    :try_start_4
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1e

    .line 2258
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :try_start_8
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 2259
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iget-boolean v2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_12
    .catchall {:try_start_8 .. :try_end_10} :catchall_1e

    :try_start_10
    monitor-exit p0

    return v2

    .line 2260
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    :catch_12
    move-exception v1

    .line 2261
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecurityManagerService"

    const-string/jumbo v3, "isPrivacyApp error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2262
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 2264
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public isRestrictedAppNet(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1884
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/server/RestrictAppNetManager;->isRestrictedAppNet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidDevice()Z
    .registers 2

    .line 2108
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    return v0
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 858
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 859
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_a

    .line 860
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->nativeKillPackageProcesses(ILjava/lang/String;)V

    .line 861
    :cond_a
    return-void
.end method

.method public moveTaskToStack(IIZ)I
    .registers 10
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .line 2204
    if-eqz p3, :cond_1d

    .line 2205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2207
    .local v0, "callingId":J
    :try_start_6
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "quick_reply"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    .line 2210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2211
    goto :goto_1d

    .line 2210
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2213
    .end local v0    # "callingId":J
    :cond_1d
    :goto_1d
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->moveTaskToStack(IIZ)I

    move-result v0

    return v0
.end method

.method public needFinishAccessControl(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1190
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1191
    .local v0, "taskIntent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2d

    .line 1192
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1193
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1194
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_2d

    .line 1195
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v1}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 1198
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_2d
    const/4 v1, 0x0

    return v1
.end method

.method public notifyAppsPreInstalled()V
    .registers 4

    .line 2040
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2041
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2042
    :try_start_6
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2044
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_23

    .line 2045
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->clear()V

    .line 2044
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 2047
    .end local v1    # "i":I
    :cond_23
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->removeCleared()V

    .line 2048
    monitor-exit v0

    .line 2049
    return-void

    .line 2048
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public offerGoogleBaseCallBack(Lmiui/security/ISecurityCallback;)V
    .registers 5
    .param p1, "cb"    # Lmiui/security/ISecurityCallback;

    .line 2022
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2023
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    .line 2025
    :try_start_5
    invoke-interface {p1}, Lmiui/security/ISecurityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/miui/server/SecurityManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/SecurityManagerService$3;-><init>(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    .line 2035
    goto :goto_1c

    .line 2033
    :catch_13
    move-exception v0

    .line 2034
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecurityManagerService"

    const-string/jumbo v2, "offerGoogleBaseCallBack"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2036
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method public pushUpdatePkgsData(Ljava/util/List;Z)V
    .registers 4
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 2238
    .local p1, "updatePkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 2239
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushUpdatePkgsData(Ljava/util/List;Z)V

    .line 2240
    return-void
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1735
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1737
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V

    .line 1738
    return-void
.end method

.method public pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    .registers 6
    .param p1, "wakeType"    # I
    .param p2, "wakePathRuleInfos"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .line 1721
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1723
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lmiui/security/WakePathChecker;->pushWakePathRuleInfos(ILjava/util/List;I)V

    .line 1724
    return-void
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .registers 4
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1728
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1730
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushWakePathWhiteList(Ljava/util/List;I)V

    .line 1731
    return-void
.end method

.method public putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1651
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1652
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1653
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1654
    .local v1, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1656
    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    .line 1659
    goto :goto_19

    .line 1657
    :catch_15
    move-exception v2

    .line 1658
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1662
    .end local v2    # "e":Ljava/io/IOException;
    :cond_19
    :goto_19
    :try_start_19
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1663
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1664
    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2a} :catch_37
    .catchall {:try_start_19 .. :try_end_2a} :catchall_35

    .line 1665
    const/4 v2, 0x1

    .line 1669
    nop

    .line 1671
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 1674
    goto :goto_34

    .line 1672
    :catch_30
    move-exception v3

    .line 1673
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1665
    .end local v3    # "e":Ljava/io/IOException;
    :goto_34
    return v2

    .line 1669
    :catchall_35
    move-exception v2

    goto :goto_48

    .line 1666
    :catch_37
    move-exception v2

    .line 1667
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_38
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    .line 1669
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_46

    .line 1671
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 1674
    :goto_40
    goto :goto_46

    .line 1672
    :catch_41
    move-exception v2

    .line 1673
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1673
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_40

    .line 1677
    :cond_46
    :goto_46
    const/4 v2, 0x0

    return v2

    .line 1669
    :goto_48
    if-eqz v1, :cond_52

    .line 1671
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 1674
    goto :goto_52

    .line 1672
    :catch_4e
    move-exception v3

    .line 1673
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1674
    .end local v3    # "e":Ljava/io/IOException;
    :cond_52
    :goto_52
    throw v2
.end method

.method public readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .line 1682
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1683
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1684
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 1685
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 1686
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1688
    :try_start_12
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 1689
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_2c
    .catchall {:try_start_12 .. :try_end_1f} :catchall_2a

    move-object v2, v3

    .line 1693
    nop

    .line 1695
    :try_start_21
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 1698
    :goto_24
    goto :goto_41

    .line 1696
    :catch_25
    move-exception v3

    .line 1697
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1697
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_24

    .line 1693
    :catchall_2a
    move-exception v3

    goto :goto_36

    .line 1690
    :catch_2c
    move-exception v3

    .line 1691
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    .line 1693
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_41

    .line 1695
    :try_start_32
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_25

    goto :goto_24

    .line 1693
    :goto_36
    if-eqz v1, :cond_40

    .line 1695
    :try_start_38
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 1698
    goto :goto_40

    .line 1696
    :catch_3c
    move-exception v4

    .line 1697
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1698
    .end local v4    # "e":Ljava/io/IOException;
    :cond_40
    :goto_40
    throw v3

    .line 1702
    :cond_41
    :goto_41
    return-object v2
.end method

.method public registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2052
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2053
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_15

    .line 2054
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2055
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2057
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_15
    monitor-exit v0

    .line 2058
    return-void

    .line 2057
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .line 1763
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1765
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    .line 1766
    return-void
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 920
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 921
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 922
    .local v0, "callingUserId":I
    invoke-virtual {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    .line 923
    return-void
.end method

.method public removeAccessControlPassAsUser(Ljava/lang/String;I)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1095
    move/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1096
    const/4 v4, 0x0

    .line 1097
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1098
    .local v5, "token":Landroid/os/IBinder;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1099
    .local v6, "activityUserId":Ljava/lang/Integer;
    const/4 v7, 0x0

    .line 1101
    .local v7, "checkAccessControlPass":Z
    const/4 v8, 0x0

    .line 1102
    .local v8, "topActivity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, -0x1

    if-ne v3, v9, :cond_19

    .line 1103
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getTopRunningActivityInfo()Ljava/util/HashMap;

    move-result-object v8

    .line 1109
    :cond_19
    monitor-enter p0

    .line 1110
    if-ne v3, v9, :cond_71

    .line 1111
    :try_start_1c
    iget-object v10, v1, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1112
    .local v10, "size":I
    nop

    .line 1112
    .local v0, "i":I
    :goto_23
    if-ge v0, v10, :cond_33

    .line 1113
    iget-object v11, v1, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/server/SecurityManagerService$UserState;

    .line 1114
    .local v11, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {v1, v11, v2}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V

    .line 1112
    .end local v11    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1116
    .end local v0    # "i":I
    :cond_33
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v0

    .line 1117
    .local v0, "currentUserId":I
    invoke-direct {v1, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v11

    .line 1118
    .restart local v11    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {v1, v11}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v12

    .line 1119
    .local v12, "enabled":Z
    if-nez v12, :cond_43

    .line 1120
    monitor-exit p0

    return-void

    .line 1122
    :cond_43
    if-eqz v8, :cond_6e

    .line 1123
    const-string/jumbo v13, "packageName"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v4, v13

    .line 1124
    const-string/jumbo v13, "token"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/IBinder;

    move-object v5, v13

    .line 1125
    const-string/jumbo v13, "userId"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object v6, v13

    .line 1126
    const/4 v13, 0x0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v1, v4, v13, v14}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v13

    move v0, v13

    .line 1128
    .end local v7    # "checkAccessControlPass":Z
    .end local v10    # "size":I
    .end local v11    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v12    # "enabled":Z
    .local v0, "checkAccessControlPass":Z
    move v7, v0

    .line 1128
    .end local v0    # "checkAccessControlPass":Z
    .restart local v7    # "checkAccessControlPass":Z
    :cond_6e
    goto :goto_78

    .line 1132
    :catchall_6f
    move-exception v0

    goto :goto_cc

    .line 1129
    :cond_71
    invoke-direct {v1, v3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1130
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    invoke-direct {v1, v0, v2}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V

    .line 1132
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :goto_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_1c .. :try_end_79} :catchall_6f

    .line 1134
    if-ne v3, v9, :cond_cb

    if-eqz v8, :cond_cb

    .line 1135
    if-nez v7, :cond_ad

    .line 1137
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x1

    :try_start_83
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    move-object v11, v4

    invoke-static/range {v10 .. v16}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 1138
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "miui.KEYGUARD_LOCKED"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1139
    iget-object v10, v1, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object v12, v5

    move-object v14, v0

    invoke-static/range {v10 .. v15}, Lmiui/security/SecurityManagerCompat;->startActvityAsUser(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;I)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a2} :catch_a3

    .line 1139
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_ac

    .line 1140
    :catch_a3
    move-exception v0

    .line 1141
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "SecurityManagerService"

    const-string/jumbo v10, "removeAccessControlPassAsUser startActvityAsUser error "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ac
    goto :goto_cb

    .line 1143
    :cond_ad
    iget-boolean v0, v1, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    if-eqz v0, :cond_cb

    const-string v0, "com.miui.securitycenter"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1144
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v9, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v0, "intent":Landroid/content/Intent;
    const-string v9, "com.miui.securitycenter"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    iget-object v9, v1, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1149
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_cb
    :goto_cb
    return-void

    .line 1132
    :goto_cc
    :try_start_cc
    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_6f

    throw v0
.end method

.method public removeWakePathData(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1742
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1744
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->removeWakePathData(I)V

    .line 1745
    return-void
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)I
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resizeMode"    # I

    .line 2233
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->resizeTask(ILandroid/graphics/Rect;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermissionAsUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2315
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkGrantPermissionPkg()V

    .line 2316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2318
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 2320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2321
    nop

    .line 2322
    return-void

    .line 2320
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public revokeRuntimePermissionAsUserNotKill(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2326
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkGrantPermissionPkg()V

    .line 2327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2329
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->revokeRuntimePermissionNotKill(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 2331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2332
    nop

    .line 2333
    return-void

    .line 2331
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 1090
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 1091
    return-void
.end method

.method public setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "passwordType"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1162
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1163
    invoke-static {p3}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p3

    .line 1164
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/AccessController;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1165
    return-void
.end method

.method public setAppHide(Z)Z
    .registers 4
    .param p1, "hide"    # Z

    .line 2103
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageHideManager;->setHideApp(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public setAppPermissionControlOpen(I)V
    .registers 7
    .param p1, "status"    # I

    .line 1804
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1805
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1804
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1806
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1807
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 1808
    :try_start_15
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1809
    .local v1, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    # setter for: Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I
    invoke-static {v1, p1}, Lcom/miui/server/SecurityManagerService$UserState;->access$2202(Lcom/miui/server/SecurityManagerService$UserState;I)I

    .line 1810
    .end local v1    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    monitor-exit p0

    .line 1811
    return-void

    .line 1810
    :catchall_1e
    move-exception v1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public setAppPrivacyStatus(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isOpen"    # Z

    .line 2119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2122
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2123
    .local v0, "callingPid":I
    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    .line 2125
    .local v1, "callingPackageName":Ljava/lang/String;
    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2126
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWriteSecurePermission()V

    .line 2128
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2130
    .local v2, "identity":J
    :try_start_23
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "privacy_status_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_43

    .line 2132
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    nop

    .line 2134
    return-void

    .line 2132
    :catchall_43
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2120
    .end local v0    # "callingPid":I
    .end local v1    # "callingPackageName":Ljava/lang/String;
    .end local v2    # "identity":J
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "packageName can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1062
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1063
    .local v0, "callingUserId":I
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    .line 1064
    return-void
.end method

.method public setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1068
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1069
    monitor-enter p0

    .line 1070
    :try_start_4
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1071
    .local v0, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 1072
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    .line 1073
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 1074
    .end local v0    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    monitor-exit p0

    .line 1075
    return-void

    .line 1074
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1324
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1325
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1326
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 1327
    :try_start_8
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    .line 1328
    .local v1, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v2

    .line 1329
    .local v2, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p2, v2, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    .line 1330
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 1331
    .end local v1    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v2    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    monitor-exit p0

    .line 1332
    return-void

    .line 1331
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1079
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1080
    monitor-enter p0

    .line 1081
    :try_start_4
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 1082
    .local v0, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 1083
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    .line 1084
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 1085
    .end local v0    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    monitor-exit p0

    .line 1086
    return-void

    .line 1085
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setCoreRuntimePermissionEnabled(ZI)V
    .registers 5
    .param p1, "grant"    # Z
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_10

    .line 1339
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1340
    .local v0, "userId":I
    invoke-static {p1, p2, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->setCoreRuntimePermissionEnabled(ZII)V

    .line 1341
    return-void

    .line 1337
    .end local v0    # "userId":I
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "setCoreRuntimePermissionEnabled Permission DENIED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurrentNetworkState(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 1985
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1986
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiNetworkManagementService;->setCurrentNetworkState(I)Z

    move-result v0

    return v0
.end method

.method public setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    .registers 8
    .param p1, "gameBooster"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "isGameMode"    # Z

    .line 963
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 964
    monitor-enter p0

    .line 965
    :try_start_4
    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result v0

    move p2, v0

    .line 966
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_4d

    .line 968
    .local v0, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :try_start_d
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 969
    new-instance v1, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;-><init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    .line 970
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_41

    .line 971
    :cond_1f
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    # getter for: Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mGameBoosterService:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->access$2100(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;

    move-result-object v1

    if-eq p1, v1, :cond_3f

    .line 972
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    # getter for: Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->mGameBoosterService:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->access$2100(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 973
    new-instance v1, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;-><init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    .line 974
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_41

    .line 976
    :cond_3f
    iput-boolean p3, v0, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_41} :catch_42
    .catchall {:try_start_d .. :try_end_41} :catchall_4d

    .line 980
    :goto_41
    goto :goto_4b

    .line 978
    :catch_42
    move-exception v1

    .line 979
    .local v1, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v2, "SecurityManagerService"

    const-string/jumbo v3, "setGameBoosterIBinder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    .end local v0    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4b
    monitor-exit p0

    .line 982
    return-void

    .line 981
    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public setIncompatibleAppList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1991
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1992
    if-eqz p1, :cond_17

    .line 1995
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1996
    :try_start_8
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1997
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1998
    monitor-exit v0

    .line 1999
    return-void

    .line 1998
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1

    .line 1993
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "List is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;III)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "rule"    # I
    .param p4, "type"    # I

    .line 1979
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    .line 1980
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/MiuiNetworkManagementService;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2080
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2081
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    if-nez v0, :cond_14

    .line 2082
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    .line 2084
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2086
    .local v0, "identity":J
    :try_start_18
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_22

    .line 2088
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2089
    nop

    .line 2090
    return-void

    .line 2088
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPrivacyApp(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPrivacy"    # Z

    .line 2243
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 2244
    monitor-enter p0

    .line 2245
    :try_start_4
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    .line 2246
    .local v0, "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    .line 2247
    .local v1, "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    iput-boolean p3, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    .line 2248
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    .line 2249
    .end local v0    # "userStateLocked":Lcom/miui/server/SecurityManagerService$UserState;
    .end local v1    # "ps":Lcom/miui/server/SecurityManagerService$PackageSetting;
    monitor-exit p0

    .line 2250
    return-void

    .line 2249
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setStickWindowName(Ljava/lang/String;)V
    .registers 6
    .param p1, "component"    # Ljava/lang/String;

    .line 2218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2220
    .local v0, "callingId":J
    :try_start_4
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gamebox_stick"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    .line 2222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2223
    nop

    .line 2224
    return-void

    .line 2222
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1749
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    .line 1751
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->setTrackWakePathCallListLogEnabled(Z)V

    .line 1752
    return-void
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .registers 7
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "timeInSeconds"    # J

    .line 1535
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    .line 1537
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteWakeUpTime()V

    .line 1538
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->setTimeBoot()V

    .line 1539
    return-void
.end method

.method public startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 891
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public stopInterceptSmsBySender()Z
    .registers 2

    .line 896
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0}, Lcom/miui/server/SecuritySmsHandler;->stopInterceptSmsBySender()Z

    move-result v0

    return v0
.end method

.method public updateLauncherPackageNames()V
    .registers 3

    .line 2291
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/security/WakePathChecker;->init(Landroid/content/Context;)V

    .line 2292
    return-void
.end method

.method public updatePermissionFlagsAsUser(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 24
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "userId"    # I

    move-object/from16 v1, p0

    .line 2348
    invoke-direct/range {p0 .. p0}, Lcom/miui/server/SecurityManagerService;->checkGrantPermissionPkg()V

    .line 2349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2351
    .local v2, "identity":J
    :try_start_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-gt v0, v4, :cond_4d

    .line 2352
    iget-object v0, v1, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v4, "updatePermissionFlags"

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v8

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v10

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v7

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v6

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v8

    aput-object p2, v9, v10

    .line 2353
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    .line 2352
    invoke-static {v0, v4, v11, v9}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e3

    .line 2355
    :cond_4d
    iget-object v0, v1, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "mPermissionManager"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2356
    .local v0, "pms":Ljava/lang/reflect/Field;
    iget-object v4, v1, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v11, "mPermissionCallback"

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2357
    .local v4, "callback":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2358
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2359
    iget-object v11, v1, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string/jumbo v12, "updatePermissionFlags"

    const/16 v13, 0x8

    new-array v9, v13, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v9, v8

    const-class v15, Ljava/lang/String;

    aput-object v15, v9, v10

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v9, v7

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v9, v6

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v9, v5

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x5

    aput-object v15, v9, v14

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x6

    aput-object v15, v9, v16

    const-string v5, "com.android.server.pm.permission.PermissionManagerServiceInternal$PermissionCallback"

    .line 2360
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v15, 0x7

    aput-object v5, v9, v15

    new-array v5, v13, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object p2, v5, v10

    .line 2361
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v16

    iget-object v6, v1, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v15

    .line 2359
    invoke-static {v11, v12, v9, v5}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d7} :catch_da
    .catchall {:try_start_9 .. :try_end_d7} :catchall_d8

    .line 2359
    .end local v0    # "pms":Ljava/lang/reflect/Field;
    .end local v4    # "callback":Ljava/lang/reflect/Field;
    goto :goto_e3

    .line 2366
    :catchall_d8
    move-exception v0

    goto :goto_e8

    .line 2363
    :catch_da
    move-exception v0

    .line 2364
    .local v0, "e":Ljava/lang/Exception;
    :try_start_db
    const-string v4, "SecurityManagerService"

    const-string/jumbo v5, "updatePermissionFlagsAsUser exception!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e3
    .catchall {:try_start_db .. :try_end_e3} :catchall_d8

    .line 2366
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2367
    nop

    .line 2368
    return-void

    .line 2366
    :goto_e8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public watchGreenGuardProcess()V
    .registers 2

    .line 2188
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/GreenGuardManagerService;->startWatchGreenguardProcess(Landroid/content/Context;)V

    .line 2189
    return-void
.end method

.method public writeAppHideConfig(Z)Z
    .registers 3
    .param p1, "hide"    # Z

    .line 1889
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    .line 1890
    const/4 v0, 0x0

    return v0
.end method
