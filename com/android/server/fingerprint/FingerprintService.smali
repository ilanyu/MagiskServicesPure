.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;,
        Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final CANCEL_TIMEOUT_LIMIT:J = 0xbb8L

.field private static final CLEANUP_UNUSED_FP:Z = true

.field private static final CMD_APP_AUTHEN:I = 0x1

.field private static final CMD_APP_CANCEL_AUTHEN:I = 0x2

.field private static final CMD_APP_CANCEL_ENROLL:I = 0x8

.field private static final CMD_APP_ENROLL:I = 0x7

.field private static final CMD_FW_LOCK_CANCEL:I = 0x5

.field private static final CMD_FW_TOP_APP_CANCEL:I = 0x6

.field private static final CMD_VENDOR_AUTHENTICATED:I = 0x3

.field private static final CMD_VENDOR_ENROLL_RES:I = 0x9

.field private static final CMD_VENDOR_ERROR:I = 0x4

.field private static final CODE_EXT_CMD:I = 0x1

.field private static final CODE_PROCESS_CMD:I = 0x1

.field static final DEBUG:Z = true

.field private static final DEFAULT_PACKNAME:Ljava/lang/String; = ""

.field private static final DEFAULT_PARAM:I = 0x0

.field private static final EXT_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.fingerprintextension@1.0::IXiaomiFingerprint"

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FOD_SERVICE_NAME:Ljava/lang/String; = "android.app.fod.ICallback"

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "android.app.fod.ICallback"

.field public static IS_FOD:Z = false

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final NAME_EXT_DAEMON:Ljava/lang/String; = "vendor.xiaomi.hardware.fingerprintextension@1.0::IXiaomiFingerprint"

.field static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static final TOUCH_AUTHEN:I = 0x1

.field private static final TOUCH_CANCEL:I = 0x0

.field private static final TOUCH_ENROLL:I = 0x2

.field private static final TOUCH_FOD_STATUS:Ljava/lang/String; = "/sys/class/touch/tp_dev/fod_status"

.field private static final TOUCH_FW_LOCK_CANCEL:I = 0x3


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigNeedFake:Z

.field private mContext:Landroid/content/Context;

.field private mCryptoPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field private mExtDaemon:Landroid/os/IHwBinder;

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private final mFodLock:Ljava/lang/Object;

.field private mFodService:Landroid/os/IBinder;

.field private mHalDeviceId:J

.field private mHandler:Landroid/os/Handler;

.field private final mKeyguardPackage:Ljava/lang/String;

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRequestId:I

.field private final mResetClientState:Ljava/lang/Runnable;

.field private final mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

.field private final mRootUserId:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

.field private mToken:Landroid/os/IBinder;

.field private mUnknownFingerprints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1818
    const-string/jumbo v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->IS_FOD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    .line 133
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 134
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I

    .line 153
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 156
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 174
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 188
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 1143
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$12;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$12;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 1797
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFodLock:Ljava/lang/Object;

    .line 262
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    .line 265
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 266
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    .line 267
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 268
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 270
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    .line 271
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 272
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 273
    const-string/jumbo v0, "statusbar"

    .line 274
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 275
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 276
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    .line 277
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/ClientMonitor;

    .line 101
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 101
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;

    .line 101
    invoke-direct/range {p0 .. p7}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/ClientMonitor;
    .param p2, "x2"    # Z

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .registers 12
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "x6"    # I
    .param p8, "x7"    # Z
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Landroid/os/Bundle;
    .param p11, "x10"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 101
    invoke-direct/range {p0 .. p11}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/fingerprint/FingerprintService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 915
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 916
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_d
    return-void
.end method

.method private canUseFingerprint(Ljava/lang/String;ZIII)Z
    .registers 10
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "requireForeground"    # Z
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "userId"    # I

    .line 874
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 876
    const-string v0, "android.permission.USE_BIOMETRIC"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 879
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 880
    return v1

    .line 882
    :cond_19
    invoke-virtual {p0, p5}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    .line 883
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; not a current user or profile"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return v2

    .line 886
    :cond_3c
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x37

    invoke-virtual {v0, v3, p3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_62

    .line 888
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; permission denied"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return v2

    .line 891
    :cond_62
    if-eqz p2, :cond_8c

    invoke-direct {p0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->currentClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 892
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; not in foreground"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return v2

    .line 895
    :cond_8c
    return v1
.end method

.method private cancelLockoutResetForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 584
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 585
    return-void
.end method

.method private cleanupUnknownFingerprints()V
    .registers 11

    .line 367
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 368
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    .line 369
    .local v0, "uf":Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    .line 371
    .local v8, "restricted":Z
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    iget v6, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->userId:I

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    .line 373
    .end local v0    # "uf":Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;
    .end local v8    # "restricted":Z
    goto :goto_38

    .line 374
    :cond_35
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 376
    :goto_38
    return-void
.end method

.method private clearEnumerateState()V
    .registers 3

    .line 355
    const-string v0, "FingerprintService"

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    return-void
.end method

.method private currentClient(Ljava/lang/String;)Z
    .registers 3
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private doFingerprintCleanupForUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 350
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->enumerateUser(I)V

    .line 352
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1552
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1554
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Fingerprint Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1556
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1557
    .local v1, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1558
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1559
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1560
    .local v5, "N":I
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1561
    .local v6, "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1562
    .local v7, "cryptoStats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1563
    .local v8, "set":Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1564
    const-string v9, "count"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1566
    const-string/jumbo v9, "mRequestId"

    iget v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1568
    const-string v9, "accept"

    const/4 v10, 0x0

    if-eqz v6, :cond_79

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_7a

    :cond_79
    move v11, v10

    :goto_7a
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1569
    const-string/jumbo v9, "reject"

    if-eqz v6, :cond_85

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_86

    :cond_85
    move v11, v10

    :goto_86
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1570
    const-string v9, "acquire"

    if-eqz v6, :cond_90

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_91

    :cond_90
    move v11, v10

    :goto_91
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1571
    const-string/jumbo v9, "lockout"

    if-eqz v6, :cond_9c

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_9d

    :cond_9c
    move v11, v10

    :goto_9d
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1572
    const-string/jumbo v9, "permanentLockout"

    if-eqz v6, :cond_a8

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    goto :goto_a9

    :cond_a8
    move v11, v10

    :goto_a9
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1575
    const-string v9, "acceptCrypto"

    if-eqz v7, :cond_b3

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_b4

    :cond_b3
    move v11, v10

    :goto_b4
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1576
    const-string/jumbo v9, "rejectCrypto"

    if-eqz v7, :cond_bf

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_c0

    :cond_bf
    move v11, v10

    :goto_c0
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1577
    const-string v9, "acquireCrypto"

    if-eqz v7, :cond_ca

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_cb

    :cond_ca
    move v11, v10

    :goto_cb
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1578
    const-string/jumbo v9, "lockoutCrypto"

    if-eqz v7, :cond_d6

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_d7

    :cond_d6
    move v11, v10

    :goto_d7
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1579
    const-string/jumbo v9, "permanentLockoutCrypto"

    .line 1580
    if-eqz v7, :cond_e2

    iget v10, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    nop

    .line 1579
    :cond_e2
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1581
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1582
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .end local v5    # "N":I
    .end local v6    # "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .end local v7    # "cryptoStats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .end local v8    # "set":Lorg/json/JSONObject;
    goto/16 :goto_22

    .line 1584
    :cond_ea
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f0} :catch_f1

    .line 1587
    .end local v1    # "sets":Lorg/json/JSONArray;
    goto :goto_f9

    .line 1585
    :catch_f1
    move-exception v1

    .line 1586
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "FingerprintService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1588
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_f9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1589
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    move-object/from16 v0, p0

    .line 1592
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1593
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1594
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1596
    .local v5, "userId":I
    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1598
    .local v6, "userToken":J
    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1599
    iget-object v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v11, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 1600
    invoke-virtual {v10, v11, v5}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 1599
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1603
    iget-object v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1604
    .local v10, "normal":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    if-eqz v10, :cond_94

    .line 1605
    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1606
    .local v13, "countsToken":J
    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    invoke-virtual {v1, v8, v9, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1607
    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1608
    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1609
    iget v11, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1610
    iget v8, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1611
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1616
    .end local v13    # "countsToken":J
    :cond_94
    iget-object v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1617
    .local v8, "crypto":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    if-eqz v8, :cond_e0

    .line 1618
    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1619
    .local v11, "countsToken":J
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1620
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1621
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1622
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1623
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1624
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1627
    .end local v11    # "countsToken":J
    :cond_e0
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1628
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    .end local v6    # "userToken":J
    .end local v8    # "crypto":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .end local v10    # "normal":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    goto/16 :goto_19

    .line 1629
    :cond_e5
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1630
    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1631
    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1632
    return-void
.end method

.method private enumerateUser(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 360
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerating user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 362
    .local v5, "restricted":Z
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    .line 363
    return-void
.end method

.method private getCmdStr(I)Ljava/lang/String;
    .registers 3
    .param p1, "cmd"    # I

    .line 1936
    const-string/jumbo v0, "unknown"

    .line 1937
    .local v0, "res":Ljava/lang/String;
    packed-switch p1, :pswitch_data_24

    goto :goto_22

    .line 1963
    :pswitch_7
    const-string v0, "CMD_VENDOR_ENROLL_RES"

    .line 1964
    goto :goto_22

    .line 1960
    :pswitch_a
    const-string v0, "CMD_APP_CANCEL_ENROLL"

    .line 1961
    goto :goto_22

    .line 1957
    :pswitch_d
    const-string v0, "CMD_APP_ENROLL"

    .line 1958
    goto :goto_22

    .line 1954
    :pswitch_10
    const-string v0, "CMD_FW_TOP_APP_CANCEL"

    .line 1955
    goto :goto_22

    .line 1951
    :pswitch_13
    const-string v0, "CMD_FW_LOCK_CANCEL"

    .line 1952
    goto :goto_22

    .line 1948
    :pswitch_16
    const-string v0, "CMD_VENDOR_ERROR"

    .line 1949
    goto :goto_22

    .line 1945
    :pswitch_19
    const-string v0, "CMD_VENDOR_AUTHENTICATED"

    .line 1946
    goto :goto_22

    .line 1942
    :pswitch_1c
    const-string v0, "CMD_APP_CANCEL_AUTHEN"

    .line 1943
    goto :goto_22

    .line 1939
    :pswitch_1f
    const-string v0, "CMD_APP_AUTHEN"

    .line 1940
    nop

    .line 1968
    :goto_22
    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private getFodServ()Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFodLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1860
    :try_start_3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFodService:Landroid/os/IBinder;

    if-nez v1, :cond_1e

    .line 1861
    const-string v1, "android.app.fod.ICallback"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFodService:Landroid/os/IBinder;

    .line 1862
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFodService:Landroid/os/IBinder;

    if-eqz v1, :cond_1e

    .line 1863
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFodService:Landroid/os/IBinder;

    new-instance v2, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$4Vjpb5I_0MBOGnr-rDwjU1lPw5Y;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$4Vjpb5I_0MBOGnr-rDwjU1lPw5Y;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1871
    :cond_1e
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFodService:Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 1872
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private getLockoutMode()I
    .registers 5

    .line 565
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 566
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 567
    .local v1, "failedAttempts":I
    const/16 v3, 0x14

    if-lt v1, v3, :cond_11

    .line 568
    const/4 v2, 0x2

    return v2

    .line 569
    :cond_11
    if-lez v1, :cond_21

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 570
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_21

    rem-int/lit8 v3, v1, 0x5

    if-nez v3, :cond_21

    .line 572
    const/4 v2, 0x1

    return v2

    .line 574
    :cond_21
    return v2
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "userId"    # I

    .line 588
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lockout_reset_user"

    .line 589
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 588
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getStatus4Touch(II)I
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 1892
    const/4 v0, -0x1

    .line 1893
    .local v0, "res":I
    packed-switch p1, :pswitch_data_24

    goto :goto_23

    .line 1898
    :pswitch_5
    if-nez p2, :cond_9

    .line 1899
    const/4 v0, 0x0

    goto :goto_23

    .line 1901
    :cond_9
    const/4 v0, 0x2

    .line 1903
    goto :goto_23

    .line 1895
    :pswitch_b
    const/4 v0, 0x2

    .line 1896
    goto :goto_23

    .line 1920
    :pswitch_d
    const/4 v0, 0x3

    .line 1921
    goto :goto_23

    .line 1923
    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-nez v1, :cond_17

    .line 1924
    const/4 v0, 0x0

    goto :goto_23

    .line 1926
    :cond_17
    const/4 v0, 0x3

    .line 1928
    goto :goto_23

    .line 1908
    :pswitch_19
    if-nez p2, :cond_1d

    .line 1909
    const/4 v0, 0x1

    goto :goto_23

    .line 1911
    :cond_1d
    const/4 v0, 0x0

    .line 1913
    goto :goto_23

    .line 1917
    :pswitch_1f
    const/4 v0, 0x0

    .line 1918
    goto :goto_23

    .line 1905
    :pswitch_21
    const/4 v0, 0x1

    .line 1906
    nop

    .line 1932
    :goto_23
    return v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1f
        :pswitch_19
        :pswitch_f
        :pswitch_d
        :pswitch_1f
        :pswitch_b
        :pswitch_1f
        :pswitch_5
    .end packed-switch
.end method

.method private getUserOrWorkProfileId(Ljava/lang/String;I)I
    .registers 4
    .param p1, "clientPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1702
    const/4 v0, 0x0

    return v0
.end method

.method private isForegroundActivity(II)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 852
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 853
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 854
    .local v2, "N":I
    move v3, v0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_29

    .line 855
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 856
    .local v4, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_26

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_26

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_2a

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_26

    .line 858
    const/4 v0, 0x1

    return v0

    .line 854
    .end local v4    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 863
    .end local v1    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_29
    goto :goto_32

    .line 861
    :catch_2a
    move-exception v1

    .line 862
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "am.getRunningAppProcesses() failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_32
    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .registers 3
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1712
    const/4 v0, 0x0

    .line 1713
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1715
    .local v1, "token":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1c

    move-object v0, v3

    .line 1717
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1718
    nop

    .line 1719
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    return v3

    .line 1717
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static synthetic lambda$getFodServ$0(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 4

    .line 1864
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFodLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1865
    :try_start_3
    const-string v1, "FingerprintService"

    const-string v2, "fodCallBack Service Died."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFodService:Landroid/os/IBinder;

    .line 1867
    monitor-exit v0

    .line 1868
    return-void

    .line 1867
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private listenForUserSwitches()V
    .registers 4

    .line 1724
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$13;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$13;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1734
    goto :goto_17

    .line 1732
    :catch_f
    move-exception v0

    .line 1733
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1735
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method private loadAuthenticatorIds()V
    .registers 9

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 330
    .local v0, "t":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 331
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 332
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v4

    .line 333
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 334
    invoke-direct {p0, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 336
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    :cond_3a
    goto :goto_18

    .line 338
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 339
    .end local v0    # "t":J
    .local v2, "t":J
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_63

    .line 340
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_63
    return-void
.end method

.method private notifyClientActiveCallbacks(Z)V
    .registers 7
    .param p1, "isActive"    # Z

    .line 932
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 933
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 935
    :try_start_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    .line 939
    goto :goto_1d

    .line 936
    :catch_13
    move-exception v2

    .line 938
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 933
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 941
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method private notifyLockoutResetMonitors()V
    .registers 3

    .line 926
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 927
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    .line 926
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 929
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V
    .registers 5
    .param p1, "client"    # Lcom/android/server/fingerprint/ClientMonitor;

    .line 548
    if-eqz p1, :cond_3d

    .line 549
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    .line 550
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eq p1, v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_3d

    .line 551
    const-string v0, "FingerprintService"

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 552
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    :cond_37
    const-string/jumbo v1, "null"

    .line 551
    :goto_3a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_3d
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_5e

    .line 556
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 559
    :cond_5e
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-nez v0, :cond_66

    .line 560
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    .line 562
    :cond_66
    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 922
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 923
    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 578
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 578
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 581
    return-void
.end method

.method private startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .registers 32
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "callingUserId"    # I
    .param p5, "groupId"    # I
    .param p6, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "flags"    # I
    .param p8, "restricted"    # Z
    .param p9, "opPackageName"    # Ljava/lang/String;
    .param p10, "bundle"    # Landroid/os/Bundle;
    .param p11, "dialogReceiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object/from16 v15, p0

    move/from16 v0, p5

    move-object/from16 v14, p9

    .line 947
    const/4 v13, 0x0

    iput v13, v15, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 948
    if-eqz v0, :cond_e

    .line 949
    iput v0, v15, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 950
    const/4 v0, 0x0

    .line 954
    .end local p5    # "groupId":I
    .local v12, "groupId":I
    :cond_e
    move v12, v0

    invoke-direct {v15, v12, v14}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 958
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAuthentication("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), mReqId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    new-instance v16, Lcom/android/server/fingerprint/FingerprintService$10;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget v7, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    iget-object v11, v15, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, v16

    move-object v1, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move v8, v12

    move-wide/from16 v9, p2

    move-object/from16 v17, v11

    move/from16 v11, p8

    move/from16 v18, v12

    move-object v12, v14

    .end local v12    # "groupId":I
    .local v18, "groupId":I
    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lcom/android/server/fingerprint/FingerprintService$10;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1020
    .local v0, "client":Lcom/android/server/fingerprint/AuthenticationClient;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    .line 1021
    .local v1, "lockoutMode":I
    const/4 v2, 0x1

    if-eqz v1, :cond_90

    .line 1022
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In lockout mode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") ; disallowing authentication"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    if-ne v1, v2, :cond_7f

    .line 1025
    const/4 v2, 0x7

    goto :goto_81

    .line 1026
    :cond_7f
    const/16 v2, 0x9

    .line 1027
    .local v2, "errorCode":I
    :goto_81
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 1028
    const-string v3, "FingerprintService"

    const-string v4, "Cannot send permanent lockout message to client"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_8f
    return-void

    .line 1033
    .end local v2    # "errorCode":I
    :cond_90
    move/from16 v3, p7

    iput v3, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mFlags:I

    .line 1034
    move-object/from16 v4, p0

    invoke-direct {v4, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 1035
    return-void
.end method

.method private startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .registers 8
    .param p1, "newClient"    # Lcom/android/server/fingerprint/ClientMonitor;
    .param p2, "initiatedByClient"    # Z

    .line 629
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 630
    .local v0, "currentClient":Lcom/android/server/fingerprint/ClientMonitor;
    const/4 v1, 0x0

    if-eqz v0, :cond_7c

    .line 631
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request stop current client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    instance-of v2, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-nez v2, :cond_41

    instance-of v2, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v2, :cond_29

    goto :goto_41

    .line 646
    :cond_29
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->fodCallBack(II)I

    .line 647
    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    .line 652
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 653
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_79

    .line 637
    :cond_41
    :goto_41
    if-eqz p1, :cond_79

    .line 638
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_79
    :goto_79
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    goto :goto_de

    .line 656
    :cond_7c
    if-eqz p1, :cond_de

    .line 657
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 658
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), initiatedByClient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    .line 665
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v3, v3, Lcom/android/server/fingerprint/EnrollClient;

    if-eqz v3, :cond_c6

    .line 666
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->fodCallBack(II)I

    goto :goto_db

    .line 667
    :cond_c6
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v1, v1, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v1, :cond_db

    .line 668
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    check-cast v1, Lcom/android/server/fingerprint/AuthenticationClient;

    iget v1, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mFlags:I

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 669
    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    .line 668
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/fingerprint/FingerprintService;->fodCallBack(IILjava/lang/String;)I

    .line 672
    :cond_db
    :goto_db
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->start()I

    .line 674
    :cond_de
    :goto_de
    return-void
.end method

.method private startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .registers 24
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;

    move-object/from16 v12, p0

    move/from16 v0, p3

    .line 1041
    const/4 v1, 0x0

    iput v1, v12, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 1042
    if-eqz v0, :cond_c

    .line 1043
    iput v0, v12, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 1044
    const/4 v0, 0x0

    .line 1047
    .end local p3    # "userId":I
    .local v13, "userId":I
    :cond_c
    move v13, v0

    move-object/from16 v14, p7

    invoke-direct {v12, v13, v14}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1049
    move v8, v13

    .line 1051
    .local v8, "groupId":I
    new-instance v15, Lcom/android/server/fingerprint/FingerprintService$11;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    move-object v0, v15

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move v7, v13

    move-object/from16 v9, p2

    move/from16 v10, p6

    move-object v11, v14

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$11;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;)V

    .line 1064
    .local v0, "client":Lcom/android/server/fingerprint/EnrollClient;
    const/4 v1, 0x1

    invoke-direct {v12, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 1065
    return-void
.end method

.method private updateActiveGroup(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 1644
    const/4 p1, 0x0

    .line 1648
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1650
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v0, :cond_9c

    .line 1652
    :try_start_7
    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v1

    move p1, v1

    .line 1653
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v1, :cond_79

    .line 1654
    sget v1, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 1655
    .local v1, "firstSdkInt":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_30

    .line 1656
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is invalid; must be at least VERSION_CODES.BASE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_30
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 1666
    .local v2, "baseDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "fpdata"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1667
    .local v3, "fpDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_70

    .line 1668
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_62

    .line 1669
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return-void

    .line 1675
    :cond_62
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 1676
    const-string v4, "FingerprintService"

    const-string v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return-void

    .line 1681
    :cond_70
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    .line 1682
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1684
    .end local v1    # "firstSdkInt":I
    .end local v2    # "baseDir":Ljava/io/File;
    .end local v3    # "fpDir":Ljava/io/File;
    :cond_79
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1685
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v3

    goto :goto_8c

    :cond_8a
    const-wide/16 v3, 0x0

    :goto_8c
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1684
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_93} :catch_94

    .line 1688
    goto :goto_9c

    .line 1686
    :catch_94
    move-exception v1

    .line 1687
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to setActiveGroup():"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1690
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9c
    :goto_9c
    return-void
.end method

.method private userActivity()V
    .registers 6

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 527
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 528
    return-void
.end method

.method private writeStatus4Touch(I)Z
    .registers 7
    .param p1, "status"    # I

    .line 1876
    const/4 v0, 0x0

    .line 1878
    .local v0, "res":Z
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/touch/tp_dev/fod_status"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1879
    .local v1, "file":Ljava/io/File;
    if-ltz p1, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1880
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1881
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1882
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_32

    .line 1883
    const/4 v0, 0x1

    .line 1887
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_31
    goto :goto_36

    .line 1885
    :catch_32
    move-exception v1

    .line 1886
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1888
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    return v0
.end method


# virtual methods
.method checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 810
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method fodCallBack(II)I
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 1821
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/fingerprint/FingerprintService;->fodCallBack(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method fodCallBack(IILjava/lang/String;)I
    .registers 13
    .param p1, "cmd"    # I
    .param p2, "param"    # I
    .param p3, "packName"    # Ljava/lang/String;

    .line 1825
    const/4 v0, -0x1

    .line 1826
    .local v0, "resBack":I
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->IS_FOD:Z

    if-nez v1, :cond_6

    .line 1827
    return v0

    .line 1829
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->getStatus4Touch(II)I

    move-result v1

    .line 1830
    .local v1, "status":I
    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->writeStatus4Touch(I)Z

    move-result v2

    .line 1831
    .local v2, "touchFod":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1832
    .local v3, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1834
    .local v4, "reply":Landroid/os/Parcel;
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFodServ()Landroid/os/IBinder;

    move-result-object v5

    .line 1835
    .local v5, "remote":Landroid/os/IBinder;
    if-nez v5, :cond_24

    .line 1836
    const-string v6, "FingerprintService"

    const-string v7, "fodCallBack, service not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 1838
    :cond_24
    const-string v6, "android.app.fod.ICallback"

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1842
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v3, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1843
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 1844
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_3e} :catch_48
    .catchall {:try_start_16 .. :try_end_3e} :catchall_46

    move v0, v6

    .line 1849
    .end local v5    # "remote":Landroid/os/IBinder;
    :goto_3f
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1851
    goto :goto_60

    .line 1849
    :catchall_46
    move-exception v5

    goto :goto_a3

    .line 1846
    :catch_48
    move-exception v5

    .line 1847
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_49
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fodCallBack failed, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_46

    .end local v5    # "e":Landroid/os/RemoteException;
    goto :goto_3f

    .line 1852
    :goto_60
    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fodCallBack cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getCmdStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " backRes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " touchStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " writeRes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    return v0

    .line 1849
    :goto_a3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .registers 8
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1746
    const-wide/16 v0, 0x0

    .line 1747
    .local v0, "authenticatorId":J
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v2

    .line 1748
    .local v2, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v2, :cond_16

    .line 1750
    :try_start_8
    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move-wide v0, v3

    .line 1753
    goto :goto_16

    .line 1751
    :catch_e
    move-exception v3

    .line 1752
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "getAuthenticatorId() "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1755
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-wide v0
.end method

.method getEffectiveUserId(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 815
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 816
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_14

    .line 817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 818
    .local v1, "callingIdentity":J
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 819
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    .end local v1    # "callingIdentity":J
    goto :goto_1b

    .line 821
    :cond_14
    const-string v1, "FingerprintService"

    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :goto_1b
    return p1
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 784
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 785
    if-eqz p1, :cond_8

    .line 786
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 787
    const/4 p1, 0x0

    .line 790
    :cond_8
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 8

    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v0, :cond_8e

    .line 289
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "mDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_92

    .line 291
    :try_start_d
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_13} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14
    .catchall {:try_start_d .. :try_end_13} :catchall_92

    goto :goto_1e

    .line 294
    :catch_14
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1f

    .line 292
    :catch_1d
    move-exception v0

    .line 296
    :goto_1e
    nop

    .line 297
    :goto_1f
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 298
    const-string v0, "FingerprintService"

    const-string v2, "fingerprint HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_92

    .line 299
    monitor-exit p0

    return-object v1

    .line 302
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_92

    .line 305
    :try_start_38
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_42} :catch_43
    .catchall {:try_start_38 .. :try_end_42} :catchall_92

    .line 309
    goto :goto_4d

    .line 306
    :catch_43
    move-exception v0

    .line 307
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_44
    const-string v4, "FingerprintService"

    const-string v5, "Failed to open fingerprint HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4d
    const-string v0, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fingerprint HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7d

    .line 313
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    .line 314
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 315
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    goto :goto_8e

    .line 317
    :cond_7d
    const-string v0, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v2, "fingerprintd_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 319
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 322
    :cond_8e
    :goto_8e
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_90
    .catchall {:try_start_44 .. :try_end_90} :catchall_92

    monitor-exit p0

    return-object v0

    .line 287
    :catchall_92
    move-exception v0

    monitor-exit p0

    .line 287
    .end local p0    # "this":Lcom/android/server/fingerprint/FingerprintService;
    throw v0
.end method

.method protected handleAcquired(JII)V
    .registers 8
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 496
    invoke-static {p3, p4}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->recordAcquiredInfo(II)V

    .line 498
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 499
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_10

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 500
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 502
    :cond_10
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz v1, :cond_26

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-nez v1, :cond_26

    instance-of v1, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v1, :cond_26

    .line 505
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    .line 507
    :cond_26
    return-void
.end method

.method protected handleAuthenticated(JIILjava/util/ArrayList;)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 469
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    if-eq v0, p4, :cond_6

    .line 470
    iget p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 472
    :cond_6
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->fodCallBack(II)I

    .line 474
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 475
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz p3, :cond_31

    .line 477
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 478
    .local v1, "byteToken":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 479
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 482
    .end local v2    # "i":I
    :cond_2a
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->addAuthToken([B)I

    .line 484
    .end local v1    # "byteToken":[B
    :cond_31
    if-eqz v0, :cond_3c

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAuthenticated(II)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 485
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 487
    :cond_3c
    if-eqz p3, :cond_47

    .line 488
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_4f

    .line 490
    :cond_47
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    .line 492
    :goto_4f
    return-void
.end method

.method protected handleEnrollResult(JIII)V
    .registers 8
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 511
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    if-eq v0, p4, :cond_6

    .line 512
    iget p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 514
    :cond_6
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p5}, Lcom/android/server/fingerprint/FingerprintService;->fodCallBack(II)I

    .line 516
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 517
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_1c

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnrollResult(III)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 518
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 521
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 523
    :cond_1c
    return-void
.end method

.method protected handleEnumerate(JIII)V
    .registers 13
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 379
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 381
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v1, :cond_b

    instance-of v1, v0, Lcom/android/server/fingerprint/EnumerateClient;

    if-nez v1, :cond_b

    .line 382
    return-void

    .line 384
    :cond_b
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnumerationResult(III)Z

    .line 387
    if-nez p5, :cond_69

    .line 388
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v1, :cond_66

    .line 389
    move-object v1, v0

    check-cast v1, Lcom/android/server/fingerprint/InternalEnumerateClient;

    .line 390
    invoke-virtual {v1}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getUnknownFingerprints()Ljava/util/List;

    move-result-object v1

    .line 392
    .local v1, "unknownFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    .line 393
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " fingerprints for deletion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 397
    .local v3, "f":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-direct {v5, p0, v3, v6}, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v3    # "f":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_44

    .line 399
    :cond_5f
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 400
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    .line 401
    .end local v1    # "unknownFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    goto :goto_69

    .line 402
    :cond_66
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 405
    :cond_69
    :goto_69
    return-void
.end method

.method protected handleError(JII)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 409
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->fodCallBack(II)I

    .line 411
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 412
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v1, :cond_e

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v1, :cond_11

    .line 413
    :cond_e
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 415
    :cond_11
    if-eqz v0, :cond_1c

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 416
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 419
    :cond_1c
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError(client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :cond_2f
    const-string/jumbo v3, "null"

    :goto_32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne p3, v1, :cond_7e

    .line 423
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v1, :cond_98

    .line 425
    const-string v1, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start pending client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v4}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 427
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    goto :goto_98

    .line 429
    :cond_7e
    const/4 v1, 0x1

    if-ne p3, v1, :cond_98

    .line 431
    const-string v1, "FingerprintService"

    const-string v3, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    monitor-enter p0

    .line 433
    :try_start_89
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 434
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 435
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 436
    monitor-exit p0

    goto :goto_98

    :catchall_95
    move-exception v1

    monitor-exit p0
    :try_end_97
    .catchall {:try_start_89 .. :try_end_97} :catchall_95

    throw v1

    .line 438
    :cond_98
    :goto_98
    return-void
.end method

.method protected handleRemoved(JIII)V
    .registers 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 442
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    if-eq v0, p4, :cond_6

    .line 443
    iget p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 446
    :cond_6
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 452
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_4b

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onRemoved(III)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 453
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 455
    invoke-virtual {p0, p4}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 456
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 459
    :cond_4b
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 460
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    goto :goto_62

    .line 461
    :cond_5b
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_62

    .line 462
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 464
    :cond_62
    :goto_62
    return-void
.end method

.method handleUserSwitching(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 532
    if-eqz p1, :cond_19

    .line 533
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do not handleUserSwitching id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void

    .line 537
    :cond_19
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v0, :cond_34

    .line 539
    :cond_25
    const-string v0, "FingerprintService"

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 541
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 543
    :cond_34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 544
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    .line 545
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 796
    const/4 p1, 0x0

    .line 801
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 805
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isCurrentUserOrProfile(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 845
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .registers 4

    .line 1636
    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1637
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$l42rkDmfSgEoarEM7da3vinr3Iw;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$l42rkDmfSgEoarEM7da3vinr3Iw;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1638
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    .line 1639
    return-void
.end method

.method protected resetFailedAttemptsForUser(ZI)V
    .registers 6
    .param p1, "clearAttemptCounter"    # Z
    .param p2, "userId"    # I

    .line 1070
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 1071
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset fingerprint lockout, clearAttemptCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_1c
    if-eqz p1, :cond_24

    .line 1074
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1076
    :cond_24
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1079
    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutResetForUser(I)V

    .line 1080
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 1081
    return-void
.end method

.method public serviceDied(J)V
    .registers 7
    .param p1, "cookie"    # J

    .line 281
    const-string v0, "FingerprintService"

    const-string v1, "fingerprint HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "fingerprintd_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 283
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    .line 285
    return-void
.end method

.method startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .registers 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "restricted"    # Z
    .param p5, "internal"    # Z

    move-object/from16 v12, p0

    move/from16 v0, p2

    .line 736
    const/4 v1, 0x0

    iput v1, v12, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 737
    if-eqz v0, :cond_c

    .line 738
    iput v0, v12, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 739
    const/4 v0, 0x0

    .line 742
    .end local p2    # "userId":I
    .local v13, "userId":I
    :cond_c
    move v13, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v14

    .line 743
    .local v14, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v14, :cond_1c

    .line 744
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startEnumerate: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void

    .line 747
    :cond_1c
    const/4 v15, 0x1

    if-eqz p5, :cond_46

    .line 748
    invoke-virtual {v12, v13}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v16

    .line 749
    .local v16, "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 750
    .local v11, "context":Landroid/content/Context;
    new-instance v17, Lcom/android/server/fingerprint/FingerprintService$8;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 751
    invoke-virtual {v11}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v17

    move-object v1, v12

    move-object v2, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move v7, v13

    move v8, v13

    move/from16 v9, p4

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    .end local v11    # "context":Landroid/content/Context;
    .local v18, "context":Landroid/content/Context;
    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$8;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/util/List;)V

    .line 763
    .local v0, "client":Lcom/android/server/fingerprint/InternalEnumerateClient;
    invoke-direct {v12, v0, v15}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 764
    .end local v0    # "client":Lcom/android/server/fingerprint/InternalEnumerateClient;
    .end local v16    # "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v18    # "context":Landroid/content/Context;
    goto :goto_62

    .line 766
    :cond_46
    new-instance v11, Lcom/android/server/fingerprint/FingerprintService$9;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 767
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move v7, v13

    move v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/fingerprint/FingerprintService$9;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 778
    .local v0, "client":Lcom/android/server/fingerprint/EnumerateClient;
    invoke-direct {v12, v0, v15}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 780
    .end local v0    # "client":Lcom/android/server/fingerprint/EnumerateClient;
    :goto_62
    return-void
.end method

.method startExtCmd(Landroid/os/IBinder;III)I
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "cmd"    # I
    .param p4, "param"    # I

    .line 1767
    const/4 v0, -0x1

    .line 1768
    .local v0, "result":I
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1770
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    :try_start_6
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;

    if-nez v2, :cond_15

    .line 1771
    const-string/jumbo v2, "vendor.xiaomi.hardware.fingerprintextension@1.0::IXiaomiFingerprint"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;

    .line 1773
    :cond_15
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;

    if-nez v2, :cond_22

    .line 1774
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startExtCmd: mExtDaemon service not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1776
    :cond_22
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 1777
    .local v2, "hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.xiaomi.hardware.fingerprintextension@1.0::IXiaomiFingerprint"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {v2, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1779
    invoke-virtual {v2, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1780
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1781
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1782
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1783
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_44} :catch_48
    .catchall {:try_start_6 .. :try_end_44} :catchall_46

    move v0, v3

    .line 1783
    .end local v2    # "hidl_request":Landroid/os/HwParcel;
    goto :goto_53

    .line 1789
    :catchall_46
    move-exception v2

    goto :goto_7f

    .line 1785
    :catch_48
    move-exception v2

    .line 1786
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_49
    const-string v3, "FingerprintService"

    const-string v4, "extCmd failed, reset mExtDaemon. "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1787
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Landroid/os/IHwBinder;
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_46

    .line 1789
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_53
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1790
    nop

    .line 1791
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startExtCmd cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    return v0

    .line 1789
    :goto_7f
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 608
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 609
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 610
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return v1

    .line 614
    :cond_10
    :try_start_10
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return v2

    .line 615
    :catch_15
    move-exception v2

    .line 616
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPostEnroll failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 594
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 595
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_11

    .line 596
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-wide v1

    .line 600
    :cond_11
    :try_start_11
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v3
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return-wide v3

    .line 601
    :catch_16
    move-exception v3

    .line 602
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startPreEnroll failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    .end local v3    # "e":Landroid/os/RemoteException;
    return-wide v1
.end method

.method startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .registers 27
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "restricted"    # Z
    .param p7, "internal"    # Z

    move-object/from16 v12, p0

    move/from16 v0, p4

    .line 679
    const/4 v1, 0x0

    iput v1, v12, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 680
    if-eqz v0, :cond_c

    .line 681
    iput v0, v12, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 682
    const/4 v0, 0x0

    .line 685
    .end local p4    # "userId":I
    .local v13, "userId":I
    :cond_c
    move v13, v0

    if-nez p1, :cond_18

    .line 686
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void

    .line 689
    :cond_18
    if-nez p5, :cond_23

    .line 690
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: receiver is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void

    .line 694
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v14

    .line 695
    .local v14, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v14, :cond_32

    .line 696
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void

    .line 700
    :cond_32
    const/4 v11, 0x1

    if-eqz p7, :cond_5d

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 702
    .local v10, "context":Landroid/content/Context;
    new-instance v15, Lcom/android/server/fingerprint/FingerprintService$6;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 704
    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object v1, v12

    move-object v2, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p2

    move/from16 v8, p3

    move v9, v13

    move-object/from16 v17, v10

    move/from16 v10, p6

    .end local v10    # "context":Landroid/content/Context;
    .local v17, "context":Landroid/content/Context;
    move/from16 v18, v13

    move v13, v11

    move-object/from16 v11, v16

    .line 704
    .end local v13    # "userId":I
    .local v18, "userId":I
    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    .line 714
    .local v0, "client":Lcom/android/server/fingerprint/InternalRemovalClient;
    invoke-direct {v12, v0, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 715
    .end local v0    # "client":Lcom/android/server/fingerprint/InternalRemovalClient;
    .end local v17    # "context":Landroid/content/Context;
    goto :goto_80

    .line 717
    .end local v18    # "userId":I
    .restart local v13    # "userId":I
    :cond_5d
    move/from16 v18, v13

    move v13, v11

    .line 717
    .end local v13    # "userId":I
    .restart local v18    # "userId":I
    new-instance v15, Lcom/android/server/fingerprint/FingerprintService$7;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 718
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v15

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, v18

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$7;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    .line 729
    .local v0, "client":Lcom/android/server/fingerprint/RemovalClient;
    invoke-direct {v12, v0, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 731
    .end local v0    # "client":Lcom/android/server/fingerprint/RemovalClient;
    :goto_80
    return-void
.end method
