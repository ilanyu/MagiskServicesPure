.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$Shell;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$MotionListener;
    }
.end annotation


# static fields
.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z = false

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field private static final EVENT_DEEP_IDLE:I = 0x4

.field private static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field private static final EVENT_LIGHT_IDLE:I = 0x2

.field private static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field private static final EVENT_NORMAL:I = 0x1

.field private static final EVENT_NULL:I = 0x0

.field private static final LIGHT_STATE_ACTIVE:I = 0x0

.field private static final LIGHT_STATE_IDLE:I = 0x4

.field private static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final LIGHT_STATE_INACTIVE:I = 0x1

.field private static final LIGHT_STATE_OVERRIDE:I = 0x7

.field private static final LIGHT_STATE_PRE_IDLE:I = 0x3

.field private static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field private static final MSG_FINISH_IDLE_OP:I = 0x8

.field private static final MSG_REPORT_ACTIVE:I = 0x5

.field private static final MSG_REPORT_IDLE_OFF:I = 0x4

.field private static final MSG_REPORT_IDLE_ON:I = 0x2

.field private static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field private static final MSG_REPORT_MAINTENANCE_ACTIVITY:I = 0x7

.field private static final MSG_REPORT_TEMP_APP_WHITELIST_CHANGED:I = 0x9

.field private static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field private static final MSG_WRITE_CONFIG:I = 0x1

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_LOCATING:I = 0x4

.field private static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private mActiveIdleOpCount:I

.field private mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmsActive:Z

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private final mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mCurIdleBudget:J

.field private final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mDeepEnabled:Z

.field private final mEventCmds:[I

.field private final mEventReasons:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHasGps:Z

.field private mHasNetworkLocation:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mInactiveTimeout:J

.field private final mInteractivityReceiver:Landroid/content/BroadcastReceiver;

.field private mJobsActive:Z

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightEnabled:Z

.field private mLightIdleIntent:Landroid/content/Intent;

.field private mLightState:I

.field private mLocalActivityManager:Landroid/app/ActivityManagerInternal;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private final mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IMaintenanceActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceStartTime:J

.field private final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mNetworkConnected:Z

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNextLightAlarmTime:J

.field private mNextLightIdleDelay:J

.field private mNextSensingTimeoutAlarmTime:J

.field private mNotMoving:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistUserAppIdArray:[I

.field private final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedMaintenanceActivity:Z

.field private mScreenOn:Z

.field private final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1391
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 226
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    .line 233
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 239
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 245
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 250
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 255
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 261
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 267
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 274
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 279
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 285
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 290
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 296
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 302
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 310
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 316
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 325
    const/16 v0, 0x64

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 326
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 327
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 340
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 375
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 387
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 397
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 412
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    .line 471
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 473
    new-instance v0, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 494
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 1392
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    .line 1393
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 1394
    new-instance v0, Lcom/android/server/AppStateTracker;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/AppStateTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1395
    const-class v0, Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1396
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceIdleController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private addEvent(ILjava/lang/String;)V
    .registers 8
    .param p1, "cmd"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2f

    .line 331
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v1

    .line 335
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 336
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 338
    :cond_2f
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .registers 7
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .line 2608
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2609
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1e

    .line 2610
    move v2, v0

    .local v2, "i":I
    :goto_8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 2611
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2610
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2614
    .end local v2    # "i":I
    :cond_1e
    if-eqz p1, :cond_37

    .line 2615
    move v2, v0

    .restart local v2    # "i":I
    :goto_21
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 2616
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2615
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 2619
    .end local v2    # "i":I
    :cond_37
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2620
    .local v1, "size":I
    new-array v2, v1, [I

    .line 2621
    .local v2, "appids":[I
    nop

    .local v0, "i":I
    :goto_3e
    if-ge v0, v1, :cond_49

    .line 2622
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 2621
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 2624
    .end local v0    # "i":I
    :cond_49
    return-object v2
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2832
    const-string v0, "Device idle controller (deviceidle) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    const-string v0, "  step [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    const-string v0, "  force-idle [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    const-string v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    const-string v0, "  force-inactive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    const-string v0, "    Force to be inactive, ready to freely step idle states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    const-string v0, "  unforce"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    const-string v0, "    Resume normal functioning after force-idle or force-inactive."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    const-string v0, "  get [light|deep|force|screen|charging|network]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    const-string v0, "    Retrieve the current given state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    const-string v0, "  disable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    const-string v0, "    Completely disable device idle mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    const-string v0, "  enable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    const-string v0, "  enabled [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    const-string v0, "  whitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    const-string v0, "    Print currently whitelisted apps."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2853
    const-string v0, "  whitelist [package ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    const-string v0, "  sys-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    const-string v0, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    const-string v0, "    reset will reset the whitelist to the original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    const-string v0, "    Prints the system whitelist if no arguments are specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    const-string v0, "  except-idle-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    const-string v0, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    const-string v0, "    [reset] will reset the whitelist to it\'s original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    const-string v0, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    const-string v0, "  tempwhitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    const-string v0, "    Print packages that are temporarily whitelisted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    const-string v0, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    const-string v0, "    Temporarily place package in whitelist for DURATION milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    const-string v0, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    const-string v0, "  motion"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    const-string v0, "    Simulate a motion event to bring the device out of deep doze"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .line 1411
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static lightStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 190
    packed-switch p0, :pswitch_data_1e

    .line 198
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :pswitch_8
    const-string v0, "OVERRIDE"

    return-object v0

    .line 196
    :pswitch_b
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 195
    :pswitch_e
    const-string v0, "WAITING_FOR_NETWORK"

    return-object v0

    .line 194
    :pswitch_11
    const-string v0, "IDLE"

    return-object v0

    .line 193
    :pswitch_14
    const-string v0, "PRE_IDLE"

    return-object v0

    .line 192
    :pswitch_17
    const-string v0, "INACTIVE"

    return-object v0

    .line 191
    :pswitch_1a
    const-string v0, "ACTIVE"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_3
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V
    .registers 6
    .param p1, "appId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 2011
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 2012
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2013
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2014
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    .line 2016
    :try_start_12
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v1, 0x4011

    invoke-interface {v0, v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 2019
    goto :goto_1b

    .line 2018
    :catch_1a
    move-exception v0

    .line 2020
    :goto_1b
    return-void
.end method

.method private passWhiteListsToForceAppStandbyTrackerLocked()V
    .registers 5

    .line 2687
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AppStateTracker;->setPowerSaveWhitelistAppIds([I[I[I)V

    .line 2691
    return-void
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .line 1978
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1980
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 2716
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2720
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :goto_8
    :try_start_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 2720
    .local v2, "type":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_14

    if-eq v2, v4, :cond_14

    .line 2720
    .end local v2    # "type":I
    goto :goto_8

    .line 2725
    .restart local v2    # "type":I
    :cond_14
    if-ne v2, v3, :cond_bc

    .line 2729
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2730
    .local v1, "outerDepth":I
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v2, v3

    if-eq v3, v4, :cond_155

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 2731
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_155

    .line 2732
    :cond_2a
    if-eq v2, v3, :cond_1a

    const/4 v3, 0x4

    if-ne v2, v3, :cond_30

    .line 2733
    goto :goto_1a

    .line 2736
    :cond_30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2737
    .local v3, "tagName":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xed5

    if-eq v6, v7, :cond_4e

    const v7, 0x6a37689

    if-eq v6, v7, :cond_43

    goto :goto_58

    :cond_43
    const-string/jumbo v6, "un-wl"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    move v5, v4

    goto :goto_58

    :cond_4e
    const-string/jumbo v6, "wl"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    const/4 v5, 0x0

    :cond_58
    :goto_58
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_158

    .line 2758
    const-string v5, "DeviceIdleController"

    goto :goto_9f

    .line 2751
    :pswitch_5f
    const-string/jumbo v5, "n"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2752
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 2753
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 2754
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 2753
    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 2739
    .end local v5    # "packageName":Ljava/lang/String;
    :pswitch_7c
    const-string/jumbo v5, "n"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_83
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_83} :catch_13e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_83} :catch_126
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_83} :catch_10e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_83} :catch_f6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_83} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_83} :catch_c5

    .line 2740
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_ba

    .line 2742
    const/high16 v6, 0x400000

    :try_start_87
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2744
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2745
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2744
    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_87 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_87 .. :try_end_9c} :catch_13e
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_9c} :catch_126
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_9c} :catch_10e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_9c} :catch_f6
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_9c} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_87 .. :try_end_9c} :catch_c5

    .line 2744
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_9e

    .line 2746
    :catch_9d
    move-exception v6

    .line 2747
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :goto_9e
    goto :goto_ba

    .line 2758
    .restart local v3    # "tagName":Ljava/lang/String;
    :goto_9f
    :try_start_9f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <config>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2759
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2758
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2763
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_ba
    :goto_ba
    goto/16 :goto_1a

    .line 2726
    .end local v1    # "outerDepth":I
    :cond_bc
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no start tag found"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c5
    .catch Ljava/lang/IllegalStateException; {:try_start_9f .. :try_end_c5} :catch_13e
    .catch Ljava/lang/NullPointerException; {:try_start_9f .. :try_end_c5} :catch_126
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_c5} :catch_10e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9f .. :try_end_c5} :catch_f6
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_c5} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9f .. :try_end_c5} :catch_c5

    .line 2775
    .end local v2    # "type":I
    :catch_c5
    move-exception v1

    .line 2776
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_156

    .line 2773
    :catch_de
    move-exception v1

    .line 2774
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_155

    .line 2771
    :catch_f6
    move-exception v1

    .line 2772
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_155

    .line 2769
    :catch_10e
    move-exception v1

    .line 2770
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    goto :goto_155

    .line 2767
    :catch_126
    move-exception v1

    .line 2768
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_155

    .line 2765
    :catch_13e
    move-exception v1

    .line 2766
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_155
    :goto_155
    nop

    .line 2778
    :goto_156
    return-void

    nop

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_5f
    .end packed-switch
.end method

.method private removePowerSaveTempWhitelistAppDirectInternal(I)V
    .registers 5
    .param p1, "appId"    # I

    .line 1962
    monitor-enter p0

    .line 1963
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1964
    .local v0, "idx":I
    if-gez v0, :cond_b

    .line 1966
    monitor-exit p0

    return-void

    .line 1968
    :cond_b
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1969
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1970
    invoke-direct {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 1971
    .end local v0    # "idx":I
    .end local v1    # "reason":Ljava/lang/String;
    monitor-exit p0

    .line 1972
    return-void

    .line 1971
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1953
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1955
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1956
    .local v1, "appId":I
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1958
    .end local v0    # "uid":I
    .end local v1    # "appId":I
    goto :goto_15

    .line 1957
    :catch_14
    move-exception v0

    .line 1959
    :goto_15
    return-void
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .registers 4

    .line 2675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2676
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2677
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2678
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .registers 4

    .line 2681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2682
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2683
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2684
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 162
    packed-switch p0, :pswitch_data_1e

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :pswitch_8
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 168
    :pswitch_b
    const-string v0, "IDLE"

    return-object v0

    .line 167
    :pswitch_e
    const-string v0, "LOCATING"

    return-object v0

    .line 166
    :pswitch_11
    const-string v0, "SENSING"

    return-object v0

    .line 165
    :pswitch_14
    const-string v0, "IDLE_PENDING"

    return-object v0

    .line 164
    :pswitch_17
    const-string v0, "INACTIVE"

    return-object v0

    .line 163
    :pswitch_1a
    const-string v0, "ACTIVE"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private updateTempWhitelistAppIdsLocked(IZ)V
    .registers 7
    .param p1, "appId"    # I
    .param p2, "adding"    # Z

    .line 2649
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2650
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v1, v1

    if-eq v1, v0, :cond_f

    .line 2651
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 2653
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1f

    .line 2654
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 2653
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2656
    .end local v1    # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_2a

    .line 2661
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempWhitelist([IIZ)V

    .line 2664
    :cond_2a
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_35

    .line 2669
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 2671
    :cond_35
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2672
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .registers 4

    .line 2628
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2630
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 2632
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 2634
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_30

    .line 2635
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 2638
    :cond_30
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_3b

    .line 2643
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 2645
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2646
    return-void
.end method


# virtual methods
.method addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1846
    .local v1, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 1847
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v9, "addPowerSaveTempWhitelistApp"

    .line 1846
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v5, v1

    move/from16 v6, p4

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1853
    .end local p4    # "userId":I
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v11, v3

    .line 1855
    .local v11, "token":J
    const/4 v9, 0x1

    move-object v3, p0

    move v4, v1

    move-object v5, p1

    move-wide v6, p2

    move v8, v2

    move-object/from16 v10, p5

    :try_start_30
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_38

    .line 1858
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1859
    nop

    .line 1860
    return-void

    .line 1858
    :catchall_38
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v0

    throw v3
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .registers 23
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "duration"    # J
    .param p5, "sync"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 1903
    move-object/from16 v3, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1904
    .local v4, "timeNow":J
    const/4 v6, 0x0

    .line 1905
    .local v6, "informWhitelistChanged":Z
    monitor-enter p0

    .line 1906
    :try_start_c
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_a8

    move v7, v0

    .line 1907
    .local v7, "callingAppId":I
    const/16 v0, 0x2710

    if-lt v7, v0, :cond_43

    .line 1908
    :try_start_15
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_43

    .line 1909
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not on whitelist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_3e

    .line 1942
    .end local v7    # "callingAppId":I
    :catchall_3e
    move-exception v0

    move-wide/from16 v8, p3

    goto/16 :goto_ac

    .line 1913
    .restart local v7    # "callingAppId":I
    :cond_43
    :goto_43
    :try_start_43
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_a8

    move-wide/from16 v10, p3

    :try_start_49
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_a6

    .line 1914
    .end local p3    # "duration":J
    .local v8, "duration":J
    :try_start_4d
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1915
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    const/4 v10, 0x1

    if-nez v0, :cond_5a

    move v11, v10

    goto :goto_5b

    :cond_5a
    const/4 v11, 0x0

    .line 1917
    .local v11, "newEntry":Z
    :goto_5b
    if-eqz v11, :cond_6f

    .line 1918
    new-instance v12, Landroid/util/Pair;

    new-instance v13, Landroid/util/MutableLong;

    const-wide/16 v14, 0x0

    invoke-direct {v13, v14, v15}, Landroid/util/MutableLong;-><init>(J)V

    invoke-direct {v12, v13, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v12

    .line 1919
    iget-object v12, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v12, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1921
    :cond_6f
    move-object v12, v0

    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .local v12, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableLong;

    add-long v13, v4, v8

    iput-wide v13, v0, Landroid/util/MutableLong;->value:J
    :try_end_78
    .catchall {:try_start_4d .. :try_end_78} :catchall_ae

    .line 1925
    if-eqz v11, :cond_9d

    .line 1928
    :try_start_7a
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v13, 0x8011

    invoke-interface {v0, v13, v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_82} :catch_83
    .catchall {:try_start_7a .. :try_end_82} :catchall_ae

    .line 1931
    goto :goto_84

    .line 1930
    :catch_83
    move-exception v0

    .line 1932
    :goto_84
    :try_start_84
    invoke-direct {v1, v2, v8, v9}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 1933
    invoke-direct {v1, v2, v10}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 1934
    if-eqz p5, :cond_8f

    .line 1935
    const/4 v0, 0x1

    .line 1940
    .end local v6    # "informWhitelistChanged":Z
    .local v0, "informWhitelistChanged":Z
    move v6, v0

    goto :goto_9a

    .line 1937
    .end local v0    # "informWhitelistChanged":Z
    .restart local v6    # "informWhitelistChanged":Z
    :cond_8f
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v14, 0x9

    invoke-virtual {v0, v14, v2, v10}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1938
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1940
    :goto_9a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    .line 1942
    .end local v7    # "callingAppId":I
    .end local v11    # "newEntry":Z
    .end local v12    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :cond_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_84 .. :try_end_9e} :catchall_ae

    .line 1943
    if-eqz v6, :cond_a5

    .line 1944
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v0, v2, v10}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 1946
    :cond_a5
    return-void

    .line 1942
    .end local v8    # "duration":J
    .restart local p3    # "duration":J
    :catchall_a6
    move-exception v0

    goto :goto_ab

    :catchall_a8
    move-exception v0

    move-wide/from16 v10, p3

    .end local p3    # "duration":J
    .restart local v8    # "duration":J
    :goto_ab
    move-wide v8, v10

    :goto_ac
    :try_start_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ae

    throw v0

    :catchall_ae
    move-exception v0

    goto :goto_ac
.end method

.method addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 1890
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1891
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1892
    .local v3, "appId":I
    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    .line 1894
    .end local v0    # "uid":I
    .end local v3    # "appId":I
    goto :goto_1a

    .line 1893
    :catch_19
    move-exception v0

    .line 1895
    :goto_1a
    return-void
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1564
    monitor-enter p0

    .line 1566
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1568
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 1569
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1570
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1571
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2f
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    .line 1573
    :cond_2a
    const/4 v1, 0x1

    :try_start_2b
    monitor-exit p0

    return v1

    .line 1577
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_2d
    move-exception v0

    goto :goto_33

    .line 1574
    :catch_2f
    move-exception v0

    .line 1575
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1577
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_2d

    throw v0
.end method

.method public addPowerSaveWhitelistAppsInternal([Ljava/lang/String;)Z
    .registers 11
    .param p1, "names"    # [Ljava/lang/String;

    .line 1582
    monitor-enter p0

    .line 1583
    const/4 v0, 0x0

    if-eqz p1, :cond_59

    .line 1584
    const/4 v1, 0x0

    .line 1585
    .local v1, "update":Z
    :try_start_5
    array-length v2, p1

    move v3, v1

    move v1, v0

    .end local v1    # "update":Z
    .local v3, "update":Z
    :goto_8
    if-ge v1, v2, :cond_49

    aget-object v4, p1, v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_57

    .line 1587
    .local v4, "name":Ljava/lang/String;
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x400000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1589
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_2a} :catch_2e
    .catchall {:try_start_c .. :try_end_2a} :catchall_57

    if-nez v6, :cond_2d

    .line 1590
    const/4 v3, 0x1

    .line 1595
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2d
    goto :goto_46

    .line 1592
    :catch_2e
    move-exception v5

    .line 1593
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2f
    const-string v6, "DeviceIdleController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to add pkg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    nop

    .line 1585
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1597
    :cond_49
    if-eqz v3, :cond_59

    .line 1598
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1599
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1600
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 1601
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1604
    .end local v3    # "update":Z
    :catchall_57
    move-exception v0

    goto :goto_5b

    :cond_59
    monitor-exit p0

    .line 1605
    return v0

    .line 1604
    :goto_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_2f .. :try_end_5c} :catchall_57

    throw v0
.end method

.method public addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1682
    monitor-enter p0

    .line 1684
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1686
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    .line 1688
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1689
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1690
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 1694
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_38} :catch_3d
    .catchall {:try_start_1 .. :try_end_38} :catchall_3b

    .line 1696
    :cond_38
    const/4 v1, 0x1

    :try_start_39
    monitor-exit p0

    return v1

    .line 1700
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_3b
    move-exception v0

    goto :goto_41

    .line 1697
    :catch_3d
    move-exception v0

    .line 1698
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1700
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_3b

    throw v0
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .registers 5
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .line 2106
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_2c

    .line 2107
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2108
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 2110
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2111
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2112
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2114
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2115
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 2116
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 2117
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2119
    :cond_2c
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .registers 5

    .line 2123
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_c

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_44

    .line 2126
    :cond_c
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v0, :cond_28

    .line 2127
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2129
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 2130
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2131
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v2, "no activity"

    invoke-static {v0, v2}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2133
    :cond_28
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_44

    .line 2134
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2136
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 2137
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2138
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2141
    :cond_44
    return-void
.end method

.method cancelAlarmLocked()V
    .registers 5

    .line 2545
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 2546
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 2547
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2549
    :cond_11
    return-void
.end method

.method cancelLightAlarmLocked()V
    .registers 5

    .line 2552
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 2553
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 2554
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2556
    :cond_11
    return-void
.end method

.method cancelLocatingLocked()V
    .registers 3

    .line 2559
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_15

    .line 2560
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2561
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 2564
    :cond_15
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .registers 5

    .line 2567
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 2568
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 2569
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2571
    :cond_11
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 1983
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1987
    .local v0, "timeNow":J
    monitor-enter p0

    .line 1988
    :try_start_5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1989
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v2, :cond_11

    .line 1991
    monitor-exit p0

    return-void

    .line 1993
    :cond_11
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_28

    .line 1994
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1995
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    goto :goto_32

    .line 2001
    :cond_28
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2003
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :goto_32
    monitor-exit p0

    .line 2004
    return-void

    .line 2003
    :catchall_34
    move-exception v2

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v2
.end method

.method decActiveIdleOps()V
    .registers 2

    .line 2378
    monitor-enter p0

    .line 2379
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2380
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_13

    .line 2381
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 2382
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2384
    :cond_13
    monitor-exit p0

    .line 2385
    return-void

    .line 2384
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 3302
    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DeviceIdleController"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3304
    :cond_13
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_92

    .line 3305
    const/4 v5, 0x0

    .line 3306
    .local v5, "userId":I
    move v6, v5

    move v5, v4

    .line 3306
    .local v5, "i":I
    .local v6, "userId":I
    :goto_1a
    array-length v7, v3

    if-ge v5, v7, :cond_92

    .line 3307
    aget-object v7, v3, v5

    .line 3308
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "-h"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 3309
    invoke-static/range {p2 .. p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3310
    return-void

    .line 3311
    :cond_2b
    const-string v8, "-u"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 3312
    add-int/lit8 v5, v5, 0x1

    .line 3313
    array-length v8, v3

    if-ge v5, v8, :cond_47

    .line 3314
    aget-object v7, v3, v5

    .line 3315
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_47

    .line 3317
    :cond_3f
    const-string v8, "-a"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 3306
    .end local v7    # "arg":Ljava/lang/String;
    :cond_47
    :goto_47
    add-int/2addr v5, v0

    goto :goto_1a

    .line 3319
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_49
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6c

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6c

    .line 3320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    return-void

    .line 3323
    :cond_6c
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 3324
    .local v0, "shell":Lcom/android/server/DeviceIdleController$Shell;
    iput v6, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 3325
    array-length v8, v3

    sub-int/2addr v8, v5

    new-array v15, v8, [Ljava/lang/String;

    .line 3326
    .local v15, "newArgs":[Ljava/lang/String;
    array-length v8, v3

    sub-int/2addr v8, v5

    invoke-static {v3, v5, v15, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3327
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    new-instance v4, Landroid/os/ResultReceiver;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v8, v0

    move-object/from16 v11, p1

    move-object v13, v15

    move-object/from16 v16, v15

    move-object v15, v4

    .end local v15    # "newArgs":[Ljava/lang/String;
    .local v16, "newArgs":[Ljava/lang/String;
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3329
    return-void

    .line 3334
    .end local v0    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local v5    # "i":I
    .end local v6    # "userId":I
    .end local v7    # "arg":Ljava/lang/String;
    .end local v16    # "newArgs":[Ljava/lang/String;
    :cond_92
    monitor-enter p0

    .line 3335
    :try_start_93
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v5, v2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 3337
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v5, v5, v4

    if-eqz v5, :cond_fd

    .line 3338
    const-string v5, "  Idling history:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3340
    .local v5, "now":J
    const/16 v7, 0x63

    .line 3340
    .local v7, "i":I
    :goto_a9
    if-ltz v7, :cond_fd

    .line 3341
    iget-object v8, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v8, v8, v7

    .line 3342
    .local v8, "cmd":I
    if-nez v8, :cond_b2

    .line 3343
    goto :goto_fa

    .line 3346
    :cond_b2
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v9, v9, v7

    packed-switch v9, :pswitch_data_3b0

    .line 3352
    const-string v9, "         ??"

    goto :goto_cb

    .line 3351
    :pswitch_bc
    const-string v9, " deep-maint"

    goto :goto_cb

    .line 3350
    :pswitch_bf
    const-string v9, "  deep-idle"

    goto :goto_cb

    .line 3349
    :pswitch_c2
    const-string/jumbo v9, "light-maint"

    goto :goto_cb

    .line 3348
    :pswitch_c6
    const-string v9, " light-idle"

    goto :goto_cb

    .line 3347
    :pswitch_c9
    const-string v9, "     normal"

    .line 3352
    .local v9, "label":Ljava/lang/String;
    :goto_cb
    nop

    .line 3354
    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3355
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3356
    const-string v10, ": "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3357
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3358
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    if-eqz v10, :cond_f7

    .line 3359
    const-string v10, " ("

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3360
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3361
    const-string v10, ")"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3363
    :cond_f7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3340
    .end local v8    # "cmd":I
    .end local v9    # "label":Ljava/lang/String;
    :goto_fa
    add-int/lit8 v7, v7, -0x1

    goto :goto_a9

    .line 3368
    .end local v5    # "now":J
    .end local v7    # "i":I
    :cond_fd
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 3369
    .local v5, "size":I
    if-lez v5, :cond_120

    .line 3370
    const-string v6, "  Whitelist (except idle) system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    move v6, v4

    .line 3371
    .local v6, "i":I
    :goto_10b
    if-ge v6, v5, :cond_120

    .line 3372
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3373
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    add-int/lit8 v6, v6, 0x1

    goto :goto_10b

    .line 3376
    .end local v6    # "i":I
    :cond_120
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 3377
    if-lez v5, :cond_144

    .line 3378
    const-string v6, "  Whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3379
    move v6, v4

    .line 3379
    .restart local v6    # "i":I
    :goto_12f
    if-ge v6, v5, :cond_144

    .line 3380
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3381
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3379
    add-int/lit8 v6, v6, 0x1

    goto :goto_12f

    .line 3384
    .end local v6    # "i":I
    :cond_144
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 3385
    if-lez v5, :cond_168

    .line 3386
    const-string v6, "  Removed from whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3387
    move v6, v4

    .line 3387
    .restart local v6    # "i":I
    :goto_153
    if-ge v6, v5, :cond_168

    .line 3388
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3389
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3387
    add-int/lit8 v6, v6, 0x1

    goto :goto_153

    .line 3392
    .end local v6    # "i":I
    :cond_168
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 3393
    if-lez v5, :cond_18c

    .line 3394
    const-string v6, "  Whitelist user apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3395
    move v6, v4

    .line 3395
    .restart local v6    # "i":I
    :goto_177
    if-ge v6, v5, :cond_18c

    .line 3396
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3397
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3395
    add-int/lit8 v6, v6, 0x1

    goto :goto_177

    .line 3400
    .end local v6    # "i":I
    :cond_18c
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3401
    if-lez v5, :cond_1b1

    .line 3402
    const-string v6, "  Whitelist (except idle) all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3403
    move v6, v4

    .line 3403
    .restart local v6    # "i":I
    :goto_19b
    if-ge v6, v5, :cond_1b1

    .line 3404
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3405
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 3406
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3403
    add-int/lit8 v6, v6, 0x1

    goto :goto_19b

    .line 3409
    .end local v6    # "i":I
    :cond_1b1
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3410
    if-lez v5, :cond_1d6

    .line 3411
    const-string v6, "  Whitelist user app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3412
    move v6, v4

    .line 3412
    .restart local v6    # "i":I
    :goto_1c0
    if-ge v6, v5, :cond_1d6

    .line 3413
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3414
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 3415
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3412
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c0

    .line 3418
    .end local v6    # "i":I
    :cond_1d6
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3419
    if-lez v5, :cond_1fb

    .line 3420
    const-string v6, "  Whitelist all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3421
    move v6, v4

    .line 3421
    .restart local v6    # "i":I
    :goto_1e5
    if-ge v6, v5, :cond_1fb

    .line 3422
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3423
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 3424
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3421
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e5

    .line 3427
    .end local v6    # "i":I
    :cond_1fb
    invoke-virtual {v1, v2, v0}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 3429
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz v0, :cond_206

    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v0, v0

    goto :goto_207

    :cond_206
    move v0, v4

    .line 3430
    .end local v5    # "size":I
    .local v0, "size":I
    :goto_207
    if-lez v0, :cond_223

    .line 3431
    const-string v5, "  Temp whitelist app ids:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3432
    nop

    .line 3432
    .local v4, "i":I
    :goto_20f
    if-ge v4, v0, :cond_223

    .line 3433
    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3434
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3435
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3432
    add-int/lit8 v4, v4, 0x1

    goto :goto_20f

    .line 3439
    .end local v4    # "i":I
    :cond_223
    const-string v4, "  mLightEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 3440
    const-string v4, "  mDeepEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3441
    const-string v4, "  mForceIdle="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3442
    const-string v4, "  mMotionSensor="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3443
    const-string v4, "  mScreenOn="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3444
    const-string v4, "  mNetworkConnected="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3445
    const-string v4, "  mCharging="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3446
    const-string v4, "  mMotionActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v4, v4, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3447
    const-string v4, "  mNotMoving="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3448
    const-string v4, "  mLocating="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocating:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasGps="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3449
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasNetwork="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3450
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mLocated="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocated:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3451
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz v4, :cond_2b5

    .line 3452
    const-string v4, "  mLastGenericLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3454
    :cond_2b5
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz v4, :cond_2c3

    .line 3455
    const-string v4, "  mLastGpsLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3457
    :cond_2c3
    const-string v4, "  mState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3458
    const-string v4, " mLightState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3459
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3460
    const-string v4, "  mInactiveTimeout="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3461
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3462
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz v4, :cond_2fa

    .line 3463
    const-string v4, "  mActiveIdleOpCount="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3465
    :cond_2fa
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_313

    .line 3466
    const-string v4, "  mNextAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3467
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3468
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3470
    :cond_313
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_326

    .line 3471
    const-string v4, "  mNextIdlePendingDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3472
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3473
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3475
    :cond_326
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_339

    .line 3476
    const-string v4, "  mNextIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3477
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3478
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3480
    :cond_339
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_34c

    .line 3481
    const-string v4, "  mNextIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3482
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3483
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3485
    :cond_34c
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_363

    .line 3486
    const-string v4, "  mNextLightAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3487
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3488
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3490
    :cond_363
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_376

    .line 3491
    const-string v4, "  mCurIdleBudget="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3492
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3493
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3495
    :cond_376
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_38d

    .line 3496
    const-string v4, "  mMaintenanceStartTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3497
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3498
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3500
    :cond_38d
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz v4, :cond_39b

    .line 3501
    const-string v4, "  mJobsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3503
    :cond_39b
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz v4, :cond_3a9

    .line 3504
    const-string v4, "  mAlarmsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3506
    .end local v0    # "size":I
    :cond_3a9
    monitor-exit p0

    .line 3507
    return-void

    .line 3506
    :catchall_3ab
    move-exception v0

    monitor-exit p0
    :try_end_3ad
    .catchall {:try_start_93 .. :try_end_3ad} :catchall_3ab

    throw v0

    nop

    nop

    :pswitch_data_3b0
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_c6
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
    .end packed-switch
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "printTitle"    # Z

    .line 3510
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3511
    .local v0, "size":I
    if-lez v0, :cond_50

    .line 3512
    const-string v1, ""

    .line 3513
    .local v1, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_13

    .line 3514
    const-string v2, "  Temp whitelist schedule:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3515
    const-string v1, "    "

    .line 3517
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3518
    .local v2, "timeNow":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v0, :cond_50

    .line 3519
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3520
    const-string v5, "UID="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3521
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3522
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3523
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3524
    .local v5, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/MutableLong;

    iget-wide v6, v6, Landroid/util/MutableLong;->value:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3525
    const-string v6, " - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3526
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3518
    .end local v5    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 3529
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "timeNow":J
    .end local v4    # "i":I
    :cond_50
    return-void
.end method

.method exitForceIdleLocked()V
    .registers 3

    .line 2159
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_18

    .line 2160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2161
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_18

    .line 2162
    :cond_f
    const-string v0, "exit-force"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2165
    :cond_18
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 2023
    monitor-enter p0

    .line 2024
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2025
    monitor-exit p0

    .line 2026
    return-void

    .line 2025
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .registers 6

    .line 2435
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_34

    .line 2437
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2447
    .local v3, "now":J
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v2, :cond_23

    .line 2448
    const-string/jumbo v0, "s:early"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_34

    .line 2449
    :cond_23
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_2e

    .line 2450
    const-string/jumbo v0, "s:predone"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_34

    .line 2452
    :cond_2e
    const-string/jumbo v0, "s:early"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2456
    .end local v3    # "now":J
    :cond_34
    :goto_34
    return-void
.end method

.method public getAppIdTempWhitelistInternal()[I
    .registers 2

    .line 1835
    monitor-enter p0

    .line 1836
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1837
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .registers 2

    .line 1829
    monitor-enter p0

    .line 1830
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1831
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .registers 2

    .line 1817
    monitor-enter p0

    .line 1818
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1819
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .registers 2

    .line 1823
    monitor-enter p0

    .line 1824
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1825
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 7

    .line 1769
    monitor-enter p0

    .line 1770
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1771
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1772
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1773
    .local v2, "cur":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "cur":I
    :goto_14
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_2b

    .line 1774
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    .line 1775
    add-int/lit8 v4, v4, 0x1

    .line 1773
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1777
    .end local v2    # "i":I
    :cond_2b
    nop

    .local v3, "i":I
    :goto_2c
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 1778
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    .line 1779
    add-int/lit8 v4, v4, 0x1

    .line 1777
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2c

    .line 1781
    .end local v3    # "i":I
    :cond_44
    monitor-exit p0

    return-object v1

    .line 1782
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    .end local v4    # "cur":I
    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .registers 7

    .line 1786
    monitor-enter p0

    .line 1787
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 1788
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1789
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1790
    .local v2, "cur":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "cur":I
    :goto_14
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_2b

    .line 1791
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    .line 1792
    add-int/lit8 v4, v4, 0x1

    .line 1790
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1794
    .end local v2    # "i":I
    :cond_2b
    nop

    .local v3, "i":I
    :goto_2c
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 1795
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    .line 1796
    add-int/lit8 v4, v4, 0x1

    .line 1794
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2c

    .line 1798
    .end local v3    # "i":I
    :cond_44
    monitor-exit p0

    return-object v1

    .line 1799
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    .end local v4    # "cur":I
    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1640
    monitor-enter p0

    .line 1641
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1642
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1719
    monitor-enter p0

    .line 1720
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1721
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .line 1405
    monitor-enter p0

    .line 1406
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1407
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getRemovedSystemPowerWhitelistAppsInternal()[Ljava/lang/String;
    .registers 5

    .line 1747
    monitor-enter p0

    .line 1748
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1749
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1750
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 1751
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1750
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1753
    .end local v2    # "i":I
    :cond_19
    monitor-exit p0

    return-object v1

    .line 1754
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 5

    .line 1725
    monitor-enter p0

    .line 1726
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1727
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1728
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 1729
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1728
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1731
    .end local v2    # "i":I
    :cond_19
    monitor-exit p0

    return-object v1

    .line 1732
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .line 1736
    monitor-enter p0

    .line 1737
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1738
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1739
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 1740
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1739
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1742
    .end local v2    # "i":I
    :cond_19
    monitor-exit p0

    return-object v1

    .line 1743
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getUserPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .line 1758
    monitor-enter p0

    .line 1759
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1760
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1761
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 1762
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1761
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1764
    .end local v2    # "i":I
    :cond_1f
    monitor-exit p0

    return-object v1

    .line 1765
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .registers 9
    .param p1, "timeout"    # J
    .param p3, "type"    # Ljava/lang/String;

    .line 2468
    const/4 v0, 0x0

    .line 2469
    .local v0, "becomeInactive":Z
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 2471
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v1, v3, :cond_19

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_19

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_17

    goto :goto_19

    :cond_17
    move v1, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v4

    .line 2474
    .local v1, "lightIdle":Z
    :goto_1a
    if-nez v1, :cond_26

    .line 2476
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, p3, v3}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 2477
    invoke-direct {p0, v4, p3}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2479
    :cond_26
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2480
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2481
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2482
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2483
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2484
    const/4 v0, 0x1

    .line 2486
    .end local v1    # "lightIdle":Z
    :cond_36
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_43

    .line 2489
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2490
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v1, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2491
    const/4 v0, 0x1

    .line 2493
    :cond_43
    if-eqz v0, :cond_48

    .line 2494
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2496
    :cond_48
    return-void
.end method

.method handleWriteConfigFile()V
    .registers 7

    .line 2786
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2789
    .local v0, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_1c

    .line 2790
    :try_start_6
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2791
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2792
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2793
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    monitor-exit p0

    .line 2795
    goto :goto_1d

    .line 2793
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 2794
    :catch_1c
    move-exception v1

    .line 2797
    :goto_1d
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v1

    .line 2798
    const/4 v2, 0x0

    .line 2800
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_21
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 2801
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2802
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 2803
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2804
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2805
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_39} :catch_3c
    .catchall {:try_start_21 .. :try_end_39} :catchall_3a

    .line 2809
    goto :goto_49

    .line 2810
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_3a
    move-exception v2

    goto :goto_4b

    .line 2806
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_3c
    move-exception v3

    .line 2807
    .local v3, "e":Ljava/io/IOException;
    :try_start_3d
    const-string v4, "DeviceIdleController"

    const-string v5, "Error writing config file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2808
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2810
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_49
    monitor-exit v1

    .line 2811
    return-void

    .line 2810
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_3a

    throw v2
.end method

.method incActiveIdleOps()V
    .registers 2

    .line 2372
    monitor-enter p0

    .line 2373
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2374
    monitor-exit p0

    .line 2375
    return-void

    .line 2374
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method isAppOnWhitelistInternal(I)Z
    .registers 3
    .param p1, "appid"    # I

    .line 1399
    monitor-enter p0

    .line 1400
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 1401
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method isOpsInactiveLocked()Z
    .registers 2

    .line 2431
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1810
    monitor-enter p0

    .line 1811
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1812
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    .line 1811
    return v0

    .line 1813
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1803
    monitor-enter p0

    .line 1804
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1805
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    .line 1804
    return v0

    .line 1806
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method motionLocked()V
    .registers 4

    .line 2461
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 2462
    return-void
.end method

.method public onAnyMotionResult(I)V
    .registers 5
    .param p1, "result"    # I

    .line 982
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 983
    monitor-enter p0

    .line 984
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 985
    monitor-exit p0

    goto :goto_c

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0

    .line 987
    :cond_c
    :goto_c
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3e

    if-ne p1, v0, :cond_12

    goto :goto_3e

    .line 992
    :cond_12
    if-nez p1, :cond_4a

    .line 993
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    .line 995
    monitor-enter p0

    .line 996
    :try_start_1a
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 997
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 998
    monitor-exit p0

    goto :goto_4a

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v0

    .line 999
    :cond_27
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4a

    .line 1002
    monitor-enter p0

    .line 1003
    :try_start_2d
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1004
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz v0, :cond_39

    .line 1005
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 1007
    :cond_39
    monitor-exit p0

    goto :goto_4a

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_3b

    throw v0

    .line 989
    :cond_3e
    :goto_3e
    monitor-enter p0

    .line 990
    :try_start_3f
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "non_stationary"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 991
    monitor-exit p0

    .line 1010
    :cond_4a
    :goto_4a
    return-void

    .line 991
    :catchall_4b
    move-exception v0

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 11
    .param p1, "phase"    # I

    .line 1473
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1d7

    .line 1474
    monitor-enter p0

    .line 1475
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1476
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1477
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 1478
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 1479
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 1480
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "deviceidle_maint"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1482
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1483
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "deviceidle_going_idle"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1485
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1486
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 1488
    const-string/jumbo v0, "netpolicy"

    .line 1489
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1488
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 1490
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1492
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1494
    .local v0, "sigMotionSensorId":I
    if-lez v0, :cond_a4

    .line 1495
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1497
    :cond_a4
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_c3

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x112001c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 1499
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1502
    :cond_c3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_d1

    .line 1504
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1508
    :cond_d1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x112001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 1510
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    .line 1512
    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    const/16 v3, 0x64

    .line 1513
    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1514
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1515
    invoke-virtual {v1, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    .line 1516
    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 1519
    :cond_10c
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 1521
    .local v1, "angleThreshold":F
    new-instance v2, Lcom/android/server/AnyMotionDetector;

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object v3, v2

    move-object v7, p0

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 1525
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/AppStateTracker;->onSystemServicesReady()V

    .line 1527
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 1528
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    const/high16 v3, 0x50000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1530
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 1531
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1534
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1535
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1538
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 1539
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1540
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1543
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 1544
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1547
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 1548
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1549
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1550
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1552
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 1554
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 1556
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 1557
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 1558
    .end local v0    # "sigMotionSensorId":I
    .end local v1    # "angleThreshold":F
    .end local v2    # "filter":Landroid/content/IntentFilter;
    monitor-exit p0
    :try_end_1cf
    .catchall {:try_start_5 .. :try_end_1cf} :catchall_1d4

    .line 1559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    goto :goto_1d7

    .line 1558
    :catchall_1d4
    move-exception v0

    :try_start_1d5
    monitor-exit p0
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    throw v0

    .line 1561
    :cond_1d7
    :goto_1d7
    return-void
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .registers 22
    .param p1, "shell"    # Lcom/android/server/DeviceIdleController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2895
    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 2896
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v0, "step"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_8b

    .line 2897
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    monitor-enter p0

    .line 2900
    :try_start_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 2901
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_88

    move-object v3, v0

    .line 2903
    .local v3, "arg":Ljava/lang/String;
    if-eqz v3, :cond_69

    :try_start_2b
    const-string v0, "deep"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_69

    .line 2907
    :cond_34
    const-string/jumbo v0, "light"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2908
    const-string/jumbo v0, "s:shell"

    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2909
    const-string v0, "Stepped to light: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 2911
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown idle mode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 2914
    :catchall_67
    move-exception v0

    goto :goto_84

    .line 2904
    :cond_69
    :goto_69
    const-string/jumbo v0, "s:shell"

    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2905
    const-string v0, "Stepped to deep: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2906
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_2b .. :try_end_7d} :catchall_67

    .line 2914
    :goto_7d
    :try_start_7d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2915
    nop

    .line 2916
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_830

    .line 2914
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :goto_84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2916
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_88
    move-exception v0

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_88

    throw v0

    .line 2917
    :cond_8b
    const-string v0, "force-idle"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v12, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_15b

    .line 2918
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    monitor-enter p0

    .line 2921
    :try_start_a1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v5, v0

    .line 2922
    .local v5, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_158

    move-object v1, v0

    .line 2924
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_10a

    :try_start_ad
    const-string v0, "deep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    goto :goto_10a

    .line 2943
    :cond_b6
    const-string/jumbo v0, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 2944
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2945
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2946
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2947
    .local v0, "curLightState":I
    :goto_c6
    if-eq v0, v3, :cond_ed

    .line 2948
    const-string/jumbo v2, "s:shell"

    invoke-virtual {v7, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2949
    iget v2, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_e9

    .line 2950
    const-string v2, "Unable to go light idle; stopped at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2951
    iget v2, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_e3
    .catchall {:try_start_ad .. :try_end_e3} :catchall_108

    .line 2953
    nop

    .line 2962
    :try_start_e4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_158

    .line 2953
    return v12

    .line 2955
    :cond_e9
    :try_start_e9
    iget v2, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    move v0, v2

    goto :goto_c6

    .line 2957
    :cond_ed
    const-string v2, "Now forced in to light idle mode"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    .end local v0    # "curLightState":I
    goto :goto_14d

    .line 2959
    :cond_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14d

    .line 2962
    :catchall_108
    move-exception v0

    goto :goto_154

    .line 2925
    :cond_10a
    :goto_10a
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_119

    .line 2926
    const-string v0, "Unable to go deep idle; not enabled"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_e9 .. :try_end_113} :catchall_108

    .line 2927
    nop

    .line 2962
    :try_start_114
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_118
    .catchall {:try_start_114 .. :try_end_118} :catchall_158

    .line 2927
    return v12

    .line 2929
    :cond_119
    :try_start_119
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2930
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2931
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2932
    .local v0, "curState":I
    :goto_120
    if-eq v0, v2, :cond_147

    .line 2933
    const-string/jumbo v3, "s:shell"

    invoke-virtual {v7, v3}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2934
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v3, :cond_143

    .line 2935
    const-string v2, "Unable to go deep idle; stopped at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2936
    iget v2, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_13d
    .catchall {:try_start_119 .. :try_end_13d} :catchall_108

    .line 2938
    nop

    .line 2962
    :try_start_13e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_142
    .catchall {:try_start_13e .. :try_end_142} :catchall_158

    .line 2938
    return v12

    .line 2940
    :cond_143
    :try_start_143
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    move v0, v3

    goto :goto_120

    .line 2942
    :cond_147
    const-string v2, "Now forced in to deep idle mode"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14c
    .catchall {:try_start_143 .. :try_end_14c} :catchall_108

    .line 2943
    .end local v0    # "curState":I
    nop

    .line 2962
    :goto_14d
    :try_start_14d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2963
    nop

    .line 2964
    .end local v1    # "arg":Ljava/lang/String;
    .end local v5    # "token":J
    monitor-exit p0

    goto/16 :goto_830

    .line 2962
    .restart local v1    # "arg":Ljava/lang/String;
    .restart local v5    # "token":J
    :goto_154
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2964
    .end local v1    # "arg":Ljava/lang/String;
    .end local v5    # "token":J
    :catchall_158
    move-exception v0

    monitor-exit p0
    :try_end_15a
    .catchall {:try_start_14d .. :try_end_15a} :catchall_158

    throw v0

    .line 2965
    :cond_15b
    const-string v0, "force-inactive"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 2966
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2968
    monitor-enter p0

    .line 2969
    :try_start_16d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_171
    .catchall {:try_start_16d .. :try_end_171} :catchall_19f

    move-wide v1, v0

    .line 2971
    .local v1, "token":J
    :try_start_172
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2972
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2973
    const-string v0, "Light state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2974
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2975
    const-string v0, ", deep state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2976
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_193
    .catchall {:try_start_172 .. :try_end_193} :catchall_19a

    .line 2978
    :try_start_193
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2979
    nop

    .line 2980
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_830

    .line 2978
    .restart local v1    # "token":J
    :catchall_19a
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2980
    .end local v1    # "token":J
    :catchall_19f
    move-exception v0

    monitor-exit p0
    :try_end_1a1
    .catchall {:try_start_193 .. :try_end_1a1} :catchall_19f

    throw v0

    .line 2981
    :cond_1a2
    const-string/jumbo v0, "unforce"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 2982
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    monitor-enter p0

    .line 2985
    :try_start_1b5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1b9
    .catchall {:try_start_1b5 .. :try_end_1b9} :catchall_1e5

    move-wide v1, v0

    .line 2987
    .restart local v1    # "token":J
    :try_start_1ba
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 2988
    const-string v0, "Light state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2989
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2990
    const-string v0, ", deep state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2991
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d9
    .catchall {:try_start_1ba .. :try_end_1d9} :catchall_1e0

    .line 2993
    :try_start_1d9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2994
    nop

    .line 2995
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_830

    .line 2993
    .restart local v1    # "token":J
    :catchall_1e0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2995
    .end local v1    # "token":J
    :catchall_1e5
    move-exception v0

    monitor-exit p0
    :try_end_1e7
    .catchall {:try_start_1d9 .. :try_end_1e7} :catchall_1e5

    throw v0

    .line 2996
    :cond_1e8
    const-string v0, "get"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a6

    .line 2997
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    monitor-enter p0

    .line 3000
    :try_start_1fa
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3001
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_29b

    .line 3002
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_205
    .catchall {:try_start_1fa .. :try_end_205} :catchall_2a3

    .line 3004
    .restart local v5    # "token":J
    :try_start_205
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_83e

    goto :goto_24c

    :sswitch_20d
    const-string/jumbo v0, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    move v0, v2

    goto :goto_24d

    :sswitch_218
    const-string v0, "charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    move v0, v3

    goto :goto_24d

    :sswitch_222
    const-string/jumbo v0, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    move v0, v11

    goto :goto_24d

    :sswitch_22d
    const-string v0, "force"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    const/4 v0, 0x2

    goto :goto_24d

    :sswitch_237
    const-string v0, "deep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    move v0, v4

    goto :goto_24d

    :sswitch_241
    const-string/jumbo v0, "screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    const/4 v0, 0x3

    goto :goto_24d

    :cond_24c
    :goto_24c
    move v0, v12

    :goto_24d
    packed-switch v0, :pswitch_data_858

    .line 3011
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_27f

    .line 3010
    :pswitch_253
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 3009
    :pswitch_259
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 3008
    :pswitch_25f
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 3007
    :pswitch_265
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 3006
    :pswitch_26b
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_291

    .line 3005
    :pswitch_275
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_291

    .line 3011
    :goto_27f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown get option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_291
    .catchall {:try_start_205 .. :try_end_291} :catchall_296

    .line 3014
    :goto_291
    :try_start_291
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3015
    nop

    .line 3016
    .end local v5    # "token":J
    goto :goto_2a0

    .line 3014
    .restart local v5    # "token":J
    :catchall_296
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3017
    .end local v5    # "token":J
    :cond_29b
    const-string v0, "Argument required"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    .end local v1    # "arg":Ljava/lang/String;
    :goto_2a0
    monitor-exit p0

    goto/16 :goto_830

    :catchall_2a3
    move-exception v0

    monitor-exit p0
    :try_end_2a5
    .catchall {:try_start_291 .. :try_end_2a5} :catchall_2a3

    throw v0

    .line 3020
    :cond_2a6
    const-string v0, "disable"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34a

    .line 3021
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    monitor-enter p0

    .line 3024
    :try_start_2b8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 3025
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_2c1
    .catchall {:try_start_2b8 .. :try_end_2c1} :catchall_347

    move-object v3, v0

    .line 3027
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3028
    .local v0, "becomeActive":Z
    const/4 v4, 0x0

    .line 3029
    .local v4, "valid":Z
    if-eqz v3, :cond_2d9

    :try_start_2c6
    const-string v5, "deep"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d9

    const-string v5, "all"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e6

    goto :goto_2d9

    .line 3053
    .end local v0    # "becomeActive":Z
    .end local v4    # "valid":Z
    :catchall_2d7
    move-exception v0

    goto :goto_343

    .line 3030
    .restart local v0    # "becomeActive":Z
    .restart local v4    # "valid":Z
    :cond_2d9
    :goto_2d9
    const/4 v4, 0x1

    .line 3031
    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v5, :cond_2e6

    .line 3032
    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 3033
    const/4 v0, 0x1

    .line 3034
    const-string v5, "Deep idle mode disabled"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    :cond_2e6
    if-eqz v3, :cond_2f9

    const-string/jumbo v5, "light"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f9

    const-string v5, "all"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_306

    .line 3038
    :cond_2f9
    const/4 v4, 0x1

    .line 3039
    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v5, :cond_306

    .line 3040
    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 3041
    const/4 v0, 0x1

    .line 3042
    const-string v5, "Light idle mode disabled"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    :cond_306
    if-eqz v0, :cond_326

    .line 3046
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_312

    const-string v6, "all"

    goto :goto_313

    :cond_312
    move-object v6, v3

    :goto_313
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3047
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 3046
    invoke-virtual {v7, v5, v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3049
    :cond_326
    if-nez v4, :cond_33c

    .line 3050
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_33c
    .catchall {:try_start_2c6 .. :try_end_33c} :catchall_2d7

    .line 3053
    .end local v0    # "becomeActive":Z
    .end local v4    # "valid":Z
    :cond_33c
    :try_start_33c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3054
    nop

    .line 3055
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_830

    .line 3053
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :goto_343
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3055
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_347
    move-exception v0

    monitor-exit p0
    :try_end_349
    .catchall {:try_start_33c .. :try_end_349} :catchall_347

    throw v0

    .line 3056
    :cond_34a
    const-string v0, "enable"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d3

    .line 3057
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3059
    monitor-enter p0

    .line 3060
    :try_start_35c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 3061
    .restart local v1    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_365
    .catchall {:try_start_35c .. :try_end_365} :catchall_3d0

    move-object v3, v0

    .line 3063
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3064
    .local v0, "becomeInactive":Z
    const/4 v5, 0x0

    .line 3065
    .local v5, "valid":Z
    if-eqz v3, :cond_37d

    :try_start_36a
    const-string v6, "deep"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37d

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38a

    goto :goto_37d

    .line 3088
    .end local v0    # "becomeInactive":Z
    .end local v5    # "valid":Z
    :catchall_37b
    move-exception v0

    goto :goto_3cc

    .line 3066
    .restart local v0    # "becomeInactive":Z
    .restart local v5    # "valid":Z
    :cond_37d
    :goto_37d
    const/4 v5, 0x1

    .line 3067
    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v6, :cond_38a

    .line 3068
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 3069
    const/4 v0, 0x1

    .line 3070
    const-string v6, "Deep idle mode enabled"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    :cond_38a
    if-eqz v3, :cond_39d

    const-string/jumbo v6, "light"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39d

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3aa

    .line 3074
    :cond_39d
    const/4 v5, 0x1

    .line 3075
    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v6, :cond_3aa

    .line 3076
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 3077
    const/4 v0, 0x1

    .line 3078
    const-string v4, "Light idle mode enable"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    :cond_3aa
    if-eqz v0, :cond_3af

    .line 3082
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3084
    :cond_3af
    if-nez v5, :cond_3c5

    .line 3085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3c5
    .catchall {:try_start_36a .. :try_end_3c5} :catchall_37b

    .line 3088
    .end local v0    # "becomeInactive":Z
    .end local v5    # "valid":Z
    :cond_3c5
    :try_start_3c5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3089
    nop

    .line 3090
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_830

    .line 3088
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :goto_3cc
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3090
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_3d0
    move-exception v0

    monitor-exit p0
    :try_end_3d2
    .catchall {:try_start_3c5 .. :try_end_3d2} :catchall_3d0

    throw v0

    .line 3091
    :cond_3d3
    const-string v0, "enabled"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_447

    .line 3092
    monitor-enter p0

    .line 3093
    :try_start_3dc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3094
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_42f

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3eb

    goto :goto_42f

    .line 3096
    :cond_3eb
    const-string v1, "deep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_402

    .line 3097
    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v1, :cond_3fa

    const-string v1, "1"

    goto :goto_3fe

    :cond_3fa
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3fe
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_441

    .line 3098
    :cond_402
    const-string/jumbo v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41a

    .line 3099
    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v1, :cond_412

    const-string v1, "1"

    goto :goto_416

    :cond_412
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_416
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_441

    .line 3101
    :cond_41a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "arg":Ljava/lang/String;
    goto :goto_441

    .line 3095
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_42f
    :goto_42f
    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v1, :cond_43a

    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v1, :cond_43a

    const-string v1, "1"

    goto :goto_43e

    :cond_43a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_43e
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3103
    .end local v0    # "arg":Ljava/lang/String;
    :goto_441
    monitor-exit p0

    goto/16 :goto_830

    :catchall_444
    move-exception v0

    monitor-exit p0
    :try_end_446
    .catchall {:try_start_3dc .. :try_end_446} :catchall_444

    throw v0

    .line 3104
    :cond_447
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x3d

    const/16 v3, 0x2d

    const/16 v5, 0x2b

    if-eqz v0, :cond_59a

    .line 3105
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 3106
    .local v6, "arg":Ljava/lang/String;
    if-eqz v6, :cond_512

    .line 3107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v13, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3109
    .local v0, "token":J
    :goto_469
    move-wide v13, v0

    .line 3112
    .end local v0    # "token":J
    .local v13, "token":J
    :try_start_46a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_4f4

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_484

    .line 3113
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_484

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_484

    goto/16 :goto_4f4

    .line 3117
    :cond_484
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3118
    .local v0, "op":C
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3119
    .local v1, "pkg":Ljava/lang/String;
    if-ne v0, v5, :cond_4be

    .line 3120
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4a9

    .line 3121
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e2

    .line 3123
    :cond_4a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown package: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e2

    .line 3125
    :cond_4be
    if-ne v0, v3, :cond_4db

    .line 3126
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e2

    .line 3127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removed: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e2

    .line 3130
    :cond_4db
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3132
    .end local v0    # "op":C
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4e2
    :goto_4e2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_4e6
    .catchall {:try_start_46a .. :try_end_4e6} :catchall_50d

    move-object v6, v0

    if-nez v0, :cond_4ef

    .line 3134
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3135
    nop

    .line 3136
    .end local v13    # "token":J
    goto/16 :goto_595

    .line 3109
    .restart local v13    # "token":J
    :cond_4ef
    move-wide v0, v13

    const/16 v2, 0x3d

    goto/16 :goto_469

    .line 3114
    :cond_4f4
    :goto_4f4
    :try_start_4f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_508
    .catchall {:try_start_4f4 .. :try_end_508} :catchall_50d

    .line 3115
    nop

    .line 3134
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3115
    return v12

    .line 3134
    :catchall_50d
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3137
    .end local v13    # "token":J
    :cond_512
    monitor-enter p0

    .line 3138
    move v0, v11

    .line 3138
    .local v0, "j":I
    :goto_514
    :try_start_514
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_53e

    .line 3139
    const-string/jumbo v1, "system-excidle,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3140
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3141
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3142
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3138
    add-int/lit8 v0, v0, 0x1

    goto :goto_514

    .line 3144
    .end local v0    # "j":I
    :cond_53e
    move v0, v11

    .line 3144
    .restart local v0    # "j":I
    :goto_53f
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_569

    .line 3145
    const-string/jumbo v1, "system,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3146
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3147
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3148
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3144
    add-int/lit8 v0, v0, 0x1

    goto :goto_53f

    .line 3150
    .end local v0    # "j":I
    :cond_569
    move v0, v11

    .line 3150
    .restart local v0    # "j":I
    :goto_56a
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_594

    .line 3151
    const-string/jumbo v1, "user,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3152
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3153
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3154
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3150
    add-int/lit8 v0, v0, 0x1

    goto :goto_56a

    .line 3156
    .end local v0    # "j":I
    :cond_594
    monitor-exit p0

    .line 3158
    .end local v6    # "arg":Ljava/lang/String;
    :goto_595
    goto/16 :goto_830

    .line 3156
    .restart local v6    # "arg":Ljava/lang/String;
    :catchall_597
    move-exception v0

    monitor-exit p0
    :try_end_599
    .catchall {:try_start_514 .. :try_end_599} :catchall_597

    throw v0

    .line 3158
    .end local v6    # "arg":Ljava/lang/String;
    :cond_59a
    const-string/jumbo v0, "tempwhitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_647

    .line 3159
    const-wide/16 v0, 0x2710

    .line 3160
    .local v0, "duration":J
    move-wide v13, v0

    move v0, v11

    .line 3160
    .local v0, "removePkg":Z
    .local v13, "duration":J
    :goto_5a7
    move v15, v0

    .line 3162
    .end local v0    # "removePkg":Z
    .local v15, "removePkg":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 3162
    .local v6, "opt":Ljava/lang/String;
    if-eqz v0, :cond_5ef

    .line 3163
    const-string v0, "-u"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ca

    .line 3164
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3165
    .end local v6    # "opt":Ljava/lang/String;
    .local v0, "opt":Ljava/lang/String;
    if-nez v0, :cond_5c3

    .line 3166
    const-string v1, "-u requires a user number"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    return v12

    .line 3169
    :cond_5c3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_5ed

    .line 3170
    .end local v0    # "opt":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :cond_5ca
    const-string v0, "-d"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e3

    .line 3171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3172
    .end local v6    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    if-nez v0, :cond_5de

    .line 3173
    const-string v1, "-d requires a duration"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    return v12

    .line 3176
    :cond_5de
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_5ed

    .line 3177
    .end local v0    # "opt":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :cond_5e3
    const-string v0, "-r"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ed

    .line 3178
    const/4 v0, 0x1

    .line 3178
    .end local v15    # "removePkg":Z
    .local v0, "removePkg":Z
    goto :goto_5a7

    .line 3160
    .end local v6    # "opt":Ljava/lang/String;
    :cond_5ed
    :goto_5ed
    move v0, v15

    goto :goto_5a7

    .line 3181
    .end local v0    # "removePkg":Z
    .restart local v6    # "opt":Ljava/lang/String;
    .restart local v15    # "removePkg":Z
    :cond_5ef
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 3182
    .local v5, "arg":Ljava/lang/String;
    if-eqz v5, :cond_636

    .line 3184
    if-eqz v15, :cond_607

    .line 3185
    :try_start_5f7
    iget v0, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    invoke-virtual {v7, v5, v0}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    :try_end_5fc
    .catch Ljava/lang/Exception; {:try_start_5f7 .. :try_end_5fc} :catch_601

    .line 3192
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_619

    .line 3189
    :catch_601
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_621

    .line 3187
    :cond_607
    :try_start_607
    iget v0, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const-string/jumbo v16, "shell"
    :try_end_60c
    .catch Ljava/lang/Exception; {:try_start_607 .. :try_end_60c} :catch_61c

    move-object v1, v7

    move-object v2, v5

    move-wide v3, v13

    move-object/from16 v17, v5

    move v5, v0

    .line 3187
    .end local v5    # "arg":Ljava/lang/String;
    .local v17, "arg":Ljava/lang/String;
    move-object/from16 v18, v6

    move-object/from16 v6, v16

    .line 3187
    .end local v6    # "opt":Ljava/lang/String;
    .local v18, "opt":Ljava/lang/String;
    :try_start_616
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_619
    .catch Ljava/lang/Exception; {:try_start_616 .. :try_end_619} :catch_61a

    .line 3192
    :goto_619
    goto :goto_645

    .line 3189
    :catch_61a
    move-exception v0

    goto :goto_621

    .line 3189
    .end local v17    # "arg":Ljava/lang/String;
    .end local v18    # "opt":Ljava/lang/String;
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :catch_61c
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 3190
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "opt":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "arg":Ljava/lang/String;
    .restart local v18    # "opt":Ljava/lang/String;
    :goto_621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3191
    return v12

    .line 3193
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "arg":Ljava/lang/String;
    .end local v18    # "opt":Ljava/lang/String;
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :cond_636
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 3193
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "opt":Ljava/lang/String;
    .restart local v17    # "arg":Ljava/lang/String;
    .restart local v18    # "opt":Ljava/lang/String;
    if-eqz v15, :cond_642

    .line 3194
    const-string v0, "[-r] requires a package name"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3195
    return v12

    .line 3197
    :cond_642
    invoke-virtual {v7, v10, v11}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 3199
    .end local v13    # "duration":J
    .end local v15    # "removePkg":Z
    .end local v17    # "arg":Ljava/lang/String;
    .end local v18    # "opt":Ljava/lang/String;
    :goto_645
    goto/16 :goto_830

    :cond_647
    const-string v0, "except-idle-whitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_720

    .line 3200
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 3204
    .local v1, "token":J
    :try_start_65d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3205
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_66d

    .line 3206
    const-string v3, "No arguments given"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_668
    .catchall {:try_start_65d .. :try_end_668} :catchall_71b

    .line 3207
    nop

    .line 3234
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3207
    return v12

    .line 3208
    :cond_66d
    :try_start_66d
    const-string/jumbo v6, "reset"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67a

    .line 3209
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    goto :goto_6e3

    .line 3212
    :cond_67a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_702

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_695

    .line 3213
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_695

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v13, 0x3d

    if-eq v6, v13, :cond_695

    goto :goto_702

    .line 3217
    :cond_695
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 3218
    .local v6, "op":C
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3219
    .local v13, "pkg":Ljava/lang/String;
    if-ne v6, v5, :cond_6d1

    .line 3220
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6bc

    .line 3221
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Added: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3231
    :goto_6b9
    const/16 v14, 0x3d

    goto :goto_6dc

    .line 3223
    :cond_6bc
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6b9

    .line 3225
    :cond_6d1
    const/16 v14, 0x3d

    if-ne v6, v14, :cond_6e9

    .line 3226
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->println(Z)V

    .line 3231
    .end local v6    # "op":C
    .end local v13    # "pkg":Ljava/lang/String;
    :goto_6dc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6
    :try_end_6e0
    .catchall {:try_start_66d .. :try_end_6e0} :catchall_71b

    move-object v0, v6

    if-nez v6, :cond_67a

    .line 3234
    .end local v0    # "arg":Ljava/lang/String;
    :goto_6e3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3235
    nop

    .line 3236
    .end local v1    # "token":J
    goto/16 :goto_830

    .line 3228
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "token":J
    .restart local v6    # "op":C
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_6e9
    :try_start_6e9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6fd
    .catchall {:try_start_6e9 .. :try_end_6fd} :catchall_71b

    .line 3229
    nop

    .line 3234
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3229
    return v12

    .line 3214
    .end local v6    # "op":C
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_702
    :goto_702
    :try_start_702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_716
    .catchall {:try_start_702 .. :try_end_716} :catchall_71b

    .line 3215
    nop

    .line 3234
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3215
    return v12

    .line 3234
    .end local v0    # "arg":Ljava/lang/String;
    :catchall_71b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3236
    .end local v1    # "token":J
    :cond_720
    const-string/jumbo v0, "sys-whitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f4

    .line 3237
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 3238
    .local v2, "arg":Ljava/lang/String;
    if-eqz v2, :cond_7c9

    .line 3239
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    .line 3243
    .local v13, "token":J
    :try_start_73d
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74a

    .line 3244
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    goto :goto_7a6

    .line 3247
    :cond_74a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_7ab

    .line 3248
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_75d

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_75d

    goto :goto_7ab

    .line 3252
    :cond_75d
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3253
    .local v0, "op":C
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3254
    .local v1, "pkg":Ljava/lang/String;
    if-eq v0, v5, :cond_785

    if-eq v0, v3, :cond_76a

    .line 3254
    .end local v0    # "op":C
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_79f

    .line 3261
    .restart local v0    # "op":C
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_76a
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79f

    .line 3262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removed "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "op":C
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_79f

    .line 3256
    .restart local v0    # "op":C
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_785
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79f

    .line 3257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restored "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    .end local v0    # "op":C
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_79f
    :goto_79f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_7a3
    .catchall {:try_start_73d .. :try_end_7a3} :catchall_7c4

    move-object v2, v0

    if-nez v0, :cond_74a

    .line 3269
    :goto_7a6
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3270
    nop

    .line 3271
    .end local v13    # "token":J
    goto :goto_7f0

    .line 3249
    .restart local v13    # "token":J
    :cond_7ab
    :goto_7ab
    :try_start_7ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package must be prefixed with + or - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7bf
    .catchall {:try_start_7ab .. :try_end_7bf} :catchall_7c4

    .line 3250
    nop

    .line 3269
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3250
    return v12

    .line 3269
    :catchall_7c4
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3272
    .end local v13    # "token":J
    :cond_7c9
    monitor-enter p0

    .line 3273
    move v0, v11

    .line 3273
    .local v0, "j":I
    :goto_7cb
    :try_start_7cb
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7ef

    .line 3274
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3275
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3276
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3273
    add-int/lit8 v0, v0, 0x1

    goto :goto_7cb

    .line 3278
    .end local v0    # "j":I
    :cond_7ef
    monitor-exit p0

    .line 3280
    .end local v2    # "arg":Ljava/lang/String;
    :goto_7f0
    goto :goto_830

    .line 3278
    .restart local v2    # "arg":Ljava/lang/String;
    :catchall_7f1
    move-exception v0

    monitor-exit p0
    :try_end_7f3
    .catchall {:try_start_7cb .. :try_end_7f3} :catchall_7f1

    throw v0

    .line 3280
    .end local v2    # "arg":Ljava/lang/String;
    :cond_7f4
    const-string/jumbo v0, "motion"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_839

    .line 3281
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    monitor-enter p0

    .line 3284
    :try_start_807
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_80b
    .catchall {:try_start_807 .. :try_end_80b} :catchall_836

    move-wide v1, v0

    .line 3286
    .local v1, "token":J
    :try_start_80c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 3287
    const-string v0, "Light state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3288
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3289
    const-string v0, ", deep state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3290
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_82b
    .catchall {:try_start_80c .. :try_end_82b} :catchall_831

    .line 3292
    :try_start_82b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3293
    nop

    .line 3294
    .end local v1    # "token":J
    monitor-exit p0

    .line 3298
    :goto_830
    return v11

    .line 3292
    .restart local v1    # "token":J
    :catchall_831
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3294
    .end local v1    # "token":J
    :catchall_836
    move-exception v0

    monitor-exit p0
    :try_end_838
    .catchall {:try_start_82b .. :try_end_838} :catchall_836

    throw v0

    .line 3296
    :cond_839
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/DeviceIdleController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :sswitch_data_83e
    .sparse-switch
        -0x361a3f94 -> :sswitch_241
        0x2efcec -> :sswitch_237
        0x5d18aeb -> :sswitch_22d
        0x6233516 -> :sswitch_222
        0x55996271 -> :sswitch_218
        0x6de15a2e -> :sswitch_20d
    .end sparse-switch

    :pswitch_data_858
    .packed-switch 0x0
        :pswitch_275
        :pswitch_26b
        :pswitch_265
        :pswitch_25f
        :pswitch_259
        :pswitch_253
    .end packed-switch
.end method

.method public onStart()V
    .registers 15

    .line 1416
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1418
    .local v0, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 1419
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1421
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 1422
    .local v1, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    .line 1423
    .local v2, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_26
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/high16 v6, 0x100000

    const/4 v7, 0x1

    if-ge v4, v5, :cond_54

    .line 1424
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_d6

    .line 1426
    .local v5, "pkg":Ljava/lang/String;
    :try_start_35
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 1428
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1429
    .local v8, "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_4f} :catch_50
    .catchall {:try_start_35 .. :try_end_4f} :catchall_d6

    .line 1432
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appid":I
    goto :goto_51

    .line 1431
    :catch_50
    move-exception v6

    .line 1423
    .end local v5    # "pkg":Ljava/lang/String;
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1434
    .end local v4    # "i":I
    :cond_54
    :try_start_54
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v4

    .line 1435
    .local v4, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v5, v3

    .local v5, "i":I
    :goto_59
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v5, v8, :cond_94

    .line 1436
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_d6

    .line 1438
    .local v8, "pkg":Ljava/lang/String;
    :try_start_65
    invoke-virtual {v0, v8, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 1440
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 1443
    .local v10, "appid":I
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1445
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_8f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_8f} :catch_90
    .catchall {:try_start_65 .. :try_end_8f} :catchall_d6

    .line 1448
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appid":I
    goto :goto_91

    .line 1447
    :catch_90
    move-exception v9

    .line 1435
    .end local v8    # "pkg":Ljava/lang/String;
    :goto_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 1451
    .end local v5    # "i":I
    :cond_94
    :try_start_94
    new-instance v5, Lcom/android/server/DeviceIdleController$Constants;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v5, p0, v6, v8}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 1453
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 1454
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1456
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 1457
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1460
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1461
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1462
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1463
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v5, v3, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v5, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 1464
    .end local v1    # "sysConfig":Lcom/android/server/SystemConfig;
    .end local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_94 .. :try_end_bc} :catchall_d6

    .line 1466
    new-instance v1, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 1467
    const-string v1, "deviceidle"

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1468
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v2, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1469
    return-void

    .line 1464
    :catchall_d6
    move-exception v1

    :try_start_d7
    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw v1
.end method

.method readConfigFileLocked()V
    .registers 4

    .line 2695
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2698
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_30

    .line 2701
    .local v0, "stream":Ljava/io/FileInputStream;
    nop

    .line 2700
    nop

    .line 2703
    :try_start_d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 2704
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2705
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_1d} :catch_28
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    .line 2709
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2d

    goto :goto_2c

    .line 2708
    :catchall_21
    move-exception v1

    .line 2709
    :try_start_22
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 2711
    goto :goto_27

    .line 2710
    :catch_26
    move-exception v2

    .line 2711
    :goto_27
    throw v1

    .line 2706
    :catch_28
    move-exception v1

    .line 2709
    :try_start_29
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 2711
    :goto_2c
    goto :goto_2f

    .line 2710
    :catch_2d
    move-exception v1

    .line 2712
    nop

    .line 2713
    :goto_2f
    return-void

    .line 2699
    .end local v0    # "stream":Ljava/io/FileInputStream;
    :catch_30
    move-exception v0

    .line 2700
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 2499
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 2500
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2501
    return-void

    .line 2504
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 2505
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz v0, :cond_21

    .line 2506
    return-void

    .line 2508
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2509
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2e

    .line 2510
    const-string/jumbo v0, "s:location"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2512
    :cond_2e
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 2515
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 2516
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2517
    return-void

    .line 2520
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 2521
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 2522
    return-void

    .line 2524
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2525
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2a

    .line 2526
    const-string/jumbo v0, "s:gps"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2528
    :cond_2a
    return-void
.end method

.method registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    .line 2407
    monitor-enter p0

    .line 2408
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2409
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    monitor-exit p0

    return v0

    .line 2410
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1864
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1868
    .local v0, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 1869
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    .line 1868
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v5, v0

    move v6, p2

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1877
    .local v1, "token":J
    :try_start_27
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    .line 1879
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1880
    nop

    .line 1881
    return-void

    .line 1879
    :catchall_2f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1628
    monitor-enter p0

    .line 1629
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1630
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1631
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 1633
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1635
    :cond_15
    monitor-exit p0

    .line 1636
    const/4 v0, 0x0

    return v0

    .line 1635
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public removePowerSaveWhitelistAppsInternal([Ljava/lang/String;)Z
    .registers 8
    .param p1, "names"    # [Ljava/lang/String;

    .line 1609
    monitor-enter p0

    .line 1610
    const/4 v0, 0x0

    .line 1611
    .local v0, "update":Z
    :try_start_2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "update":Z
    .local v3, "update":Z
    :goto_6
    if-ge v0, v1, :cond_16

    aget-object v4, p1, v0

    .line 1612
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 1613
    const/4 v3, 0x1

    .line 1611
    .end local v4    # "name":Ljava/lang/String;
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1616
    :cond_16
    if-eqz v3, :cond_24

    .line 1617
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1618
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1619
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 1620
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1622
    .end local v3    # "update":Z
    :cond_24
    monitor-exit p0

    .line 1623
    return v2

    .line 1622
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1669
    monitor-enter p0

    .line 1670
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1671
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1673
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1675
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1676
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 1677
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1678
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method reportMaintenanceActivityIfNeededLocked()V
    .registers 6

    .line 2420
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 2421
    .local v0, "active":Z
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    if-ne v0, v1, :cond_7

    .line 2422
    return-void

    .line 2424
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    .line 2425
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x7

    .line 2426
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    const/4 v4, 0x0

    .line 2425
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2427
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2428
    return-void
.end method

.method resetIdleManagementLocked()V
    .registers 3

    .line 2144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2145
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2146
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 2147
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 2149
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2150
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stopMonitoringMotionLocked()V

    .line 2151
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 2152
    return-void
.end method

.method resetLightIdleManagementLocked()V
    .registers 1

    .line 2155
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 2156
    return-void
.end method

.method public resetPowerSaveWhitelistExceptIdleInternal()V
    .registers 4

    .line 1704
    monitor-enter p0

    .line 1705
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1707
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1708
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 1711
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1713
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 1715
    :cond_22
    monitor-exit p0

    .line 1716
    return-void

    .line 1715
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v0
.end method

.method resetSystemPowerWhitelistInternal()V
    .registers 3

    .line 1646
    monitor-enter p0

    .line 1647
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1648
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1649
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1650
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1651
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 1652
    monitor-exit p0

    .line 1653
    return-void

    .line 1652
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1656
    monitor-enter p0

    .line 1657
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1658
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1660
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1662
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 1664
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1665
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method scheduleAlarmLocked(JZ)V
    .registers 21
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    move-object/from16 v0, p0

    .line 2575
    iget-object v1, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_7

    .line 2580
    return-void

    .line 2582
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v1, v1, p1

    iput-wide v1, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 2583
    if-eqz p3, :cond_20

    .line 2584
    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-wide v5, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string v7, "DeviceIdleController.deep"

    iget-object v8, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_31

    .line 2587
    :cond_20
    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x2

    iget-wide v12, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string v14, "DeviceIdleController.deep"

    iget-object v2, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v3, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2590
    :goto_31
    return-void
.end method

.method scheduleLightAlarmLocked(J)V
    .registers 12
    .param p1, "delay"    # J

    .line 2594
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 2595
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-string v6, "DeviceIdleController.light"

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2597
    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .line 2100
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2101
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2102
    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .registers 12
    .param p1, "delay"    # J

    .line 2601
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 2602
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-string v6, "DeviceIdleController.sensing"

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2604
    return-void
.end method

.method setAlarmsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 2398
    monitor-enter p0

    .line 2399
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 2400
    if-nez p1, :cond_8

    .line 2401
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 2403
    :cond_8
    monitor-exit p0

    .line 2404
    return-void

    .line 2403
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method setJobsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 2388
    monitor-enter p0

    .line 2389
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportMaintenanceActivityIfNeededLocked()V

    .line 2391
    if-nez p1, :cond_b

    .line 2392
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 2394
    :cond_b
    monitor-exit p0

    .line 2395
    return-void

    .line 2394
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method startMonitoringMotionLocked()V
    .registers 2

    .line 2532
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-nez v0, :cond_f

    .line 2533
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    .line 2535
    :cond_f
    return-void
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .registers 20
    .param p1, "reason"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 2252
    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 2254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2255
    .local v2, "now":J
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v4, v2

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2b

    .line 2257
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v4, :cond_2a

    .line 2258
    const-string v4, "alarm"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2259
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2261
    :cond_2a
    return-void

    .line 2264
    :cond_2b
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v4, :pswitch_data_188

    goto/16 :goto_187

    .line 2352
    :pswitch_38
    iput v9, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2353
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2354
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v0, v4, v5, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2358
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v9, v9

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v10, v10, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v9, v10

    float-to-long v9, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2360
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v9, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v4, v4, v9

    if-gez v4, :cond_6d

    .line 2361
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2363
    :cond_6d
    const/4 v4, 0x6

    iput v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2364
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2365
    invoke-direct {v0, v6, v8}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2366
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_187

    .line 2290
    :pswitch_7f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 2291
    iput v7, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2293
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2295
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    # getter for: Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z
    invoke-static {v4}, Lcom/android/server/DeviceIdleController$Constants;->access$1600(Lcom/android/server/DeviceIdleController$Constants;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 2296
    const-string/jumbo v4, "s:location"

    invoke-virtual {v0, v4}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2297
    goto/16 :goto_187

    .line 2300
    :cond_99
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v4, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2301
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v4, :cond_c1

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v11, "network"

    .line 2302
    invoke-virtual {v4, v11}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    if-eqz v4, :cond_c1

    .line 2303
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v13, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2304
    invoke-virtual {v13}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    .line 2303
    invoke-virtual {v4, v11, v12, v13}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2305
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_c3

    .line 2307
    :cond_c1
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    .line 2309
    :goto_c3
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v4, :cond_eb

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string v11, "gps"

    .line 2310
    invoke-virtual {v4, v11}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    if-eqz v4, :cond_eb

    .line 2311
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 2312
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string v12, "gps"

    const-wide/16 v13, 0x3e8

    const/high16 v15, 0x40a00000    # 5.0f

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v10, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2313
    invoke-virtual {v10}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v17

    .line 2312
    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v17}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2314
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_ed

    .line 2316
    :cond_eb
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 2320
    :goto_ed
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v4, :cond_f3

    .line 2321
    goto/16 :goto_187

    .line 2326
    :cond_f3
    :pswitch_f3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 2327
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2328
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 2331
    :pswitch_fe
    iget-wide v10, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v0, v10, v11, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2334
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v4, v9

    iget-object v9, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v9, v9, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v4, v9

    float-to-long v9, v4

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2336
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v4, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2337
    iget-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v4, v9, v11

    if-gez v4, :cond_12a

    .line 2338
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v9, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2340
    :cond_12a
    iput v6, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2341
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v6, 0x7

    if-eq v4, v6, :cond_136

    .line 2342
    iput v6, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 2345
    :cond_136
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2346
    invoke-direct {v0, v7, v8}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2347
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2348
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 2349
    goto :goto_187

    .line 2278
    :pswitch_149
    const/4 v4, 0x3

    iput v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2280
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2281
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {v0, v4, v5}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    .line 2282
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2283
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 2284
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2285
    iput-object v8, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 2286
    iput-object v8, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 2287
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    .line 2288
    goto :goto_187

    .line 2268
    :pswitch_169
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 2269
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {v0, v6, v7, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2271
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2272
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v6, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2273
    iput v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2275
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2276
    nop

    .line 2369
    :goto_187
    return-void

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_169
        :pswitch_149
        :pswitch_7f
        :pswitch_f3
        :pswitch_38
        :pswitch_fe
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;)V
    .registers 15
    .param p1, "reason"    # Ljava/lang/String;

    .line 2168
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 2171
    return-void

    .line 2175
    :cond_6
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    .line 2177
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    if-eq v0, v3, :cond_75

    packed-switch v0, :pswitch_data_104

    goto/16 :goto_103

    .line 2220
    :pswitch_18
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v0, :cond_30

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_22

    goto :goto_30

    .line 2241
    :cond_22
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2243
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2244
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    goto/16 :goto_103

    .line 2222
    :cond_30
    :goto_30
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2223
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2225
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v3, v7

    if-gez v0, :cond_4e

    .line 2226
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_5e

    .line 2227
    :cond_4e
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_5e

    .line 2228
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2230
    :cond_5e
    :goto_5e
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2233
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2234
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2235
    invoke-direct {p0, v6, v2}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2236
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_103

    .line 2179
    :cond_75
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2181
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 2182
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-nez v0, :cond_98

    .line 2186
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2187
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2188
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2189
    goto :goto_103

    .line 2194
    :cond_98
    :pswitch_98
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v0, v7, v4

    if-eqz v0, :cond_c3

    .line 2195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long/2addr v7, v9

    .line 2196
    .local v7, "duration":J
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_b8

    .line 2198
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v11, v7

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_c3

    .line 2201
    :cond_b8
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long v11, v7, v11

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2204
    .end local v7    # "duration":J
    :cond_c3
    :goto_c3
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2205
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2206
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    long-to-float v0, v7

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v5, v5, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    mul-float/2addr v0, v5

    float-to-long v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 2208
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    cmp-long v0, v3, v7

    if-gez v0, :cond_ed

    .line 2209
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 2212
    :cond_ed
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2213
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2214
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 2215
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2216
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 2217
    nop

    .line 2248
    :goto_103
    return-void

    :pswitch_data_104
    .packed-switch 0x3
        :pswitch_98
        :pswitch_18
        :pswitch_18
        :pswitch_98
    .end packed-switch
.end method

.method stopMonitoringMotionLocked()V
    .registers 2

    .line 2539
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_f

    .line 2540
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    .line 2542
    :cond_f
    return-void
.end method

.method unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    .line 2414
    monitor-enter p0

    .line 2415
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2416
    monitor-exit p0

    .line 2417
    return-void

    .line 2416
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method updateChargingLocked(Z)V
    .registers 4
    .param p1, "charging"    # Z

    .line 2086
    if-nez p1, :cond_11

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_11

    .line 2087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2088
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_22

    .line 2089
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_22

    .line 2091
    :cond_11
    if-eqz p1, :cond_22

    .line 2092
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2093
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_22

    .line 2094
    const-string v0, "charging"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2097
    :cond_22
    :goto_22
    return-void
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .registers 7
    .param p1, "connIntent"    # Landroid/content/Intent;

    .line 2030
    monitor-enter p0

    .line 2031
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 2032
    .local v0, "cm":Lcom/android/server/ConnectivityService;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4a

    .line 2033
    if-nez v0, :cond_7

    .line 2034
    return-void

    .line 2037
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2038
    .local v1, "ni":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 2040
    if-nez v1, :cond_10

    .line 2041
    const/4 v2, 0x0

    .line 2041
    .local v2, "conn":Z
    :goto_f
    goto :goto_32

    .line 2043
    .end local v2    # "conn":Z
    :cond_10
    if-nez p1, :cond_17

    .line 2044
    :try_start_12
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_f

    .line 2046
    :cond_17
    const-string/jumbo v2, "networkType"

    const/4 v3, -0x1

    .line 2047
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2049
    .local v2, "networkType":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_27

    .line 2050
    monitor-exit p0

    return-void

    .line 2052
    :cond_27
    const-string/jumbo v3, "noConnectivity"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2052
    .end local v2    # "networkType":I
    move v2, v3

    .line 2056
    .local v2, "conn":Z
    :goto_32
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v2, v3, :cond_45

    .line 2057
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2058
    if-eqz v2, :cond_45

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_45

    .line 2059
    const-string/jumbo v3, "network"

    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2062
    .end local v2    # "conn":Z
    :cond_45
    monitor-exit p0

    .line 2063
    return-void

    .line 2062
    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_12 .. :try_end_49} :catchall_47

    throw v2

    .line 2032
    .end local v0    # "cm":Lcom/android/server/ConnectivityService;
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method updateInteractivityLocked()V
    .registers 4

    .line 2069
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 2071
    .local v0, "screenOn":Z
    if-nez v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v1, :cond_17

    .line 2072
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2073
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_2a

    .line 2074
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_2a

    .line 2076
    :cond_17
    if-eqz v0, :cond_2a

    .line 2077
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2078
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v1, :cond_2a

    .line 2079
    const-string/jumbo v1, "screen"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2082
    :cond_2a
    :goto_2a
    return-void
.end method

.method writeConfigFileLocked()V
    .registers 5

    .line 2781
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    .line 2782
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2783
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2814
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2815
    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2816
    const/4 v0, 0x0

    move v2, v0

    .line 2816
    .local v2, "i":I
    :goto_10
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 2817
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2818
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "wl"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2819
    const-string/jumbo v4, "n"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2820
    const-string/jumbo v4, "wl"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2816
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2822
    .end local v2    # "i":I
    :cond_35
    nop

    .line 2822
    .local v0, "i":I
    :goto_36
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_5b

    .line 2823
    const-string/jumbo v2, "un-wl"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2824
    const-string/jumbo v2, "n"

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2825
    const-string/jumbo v2, "un-wl"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2822
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 2827
    .end local v0    # "i":I
    :cond_5b
    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2828
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2829
    return-void
.end method
