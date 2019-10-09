.class public Lcom/android/server/location/GnssLocationProvider;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;
.implements Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
.implements Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;,
        Lcom/android/server/location/GnssLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;,
        Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;,
        Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;,
        Lcom/android/server/location/GnssLocationProvider$LocationExtras;,
        Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z

.field private static final DEBUG_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps_debug.conf"

.field private static final DOWNLOAD_EXTRA_WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProviderXtraDownload"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final DOWNLOAD_XTRA_DATA_TIMEOUT_MS:J = 0xea60L

.field private static final ENABLE:I = 0x2

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field private static final LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field private static final LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x0L

.field private static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field private static final LPP_PROFILE:Ljava/lang/String; = "persist.sys.gps.lpp"

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final RELEASE_SUPL_CONNECTION:I = 0xf

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REPORT_LOCATION:I = 0x11

.field private static final REPORT_SV_STATUS:I = 0x12

.field private static final REQUEST_LOCATION:I = 0x10

.field private static final REQUEST_SUPL_CONNECTION:I = 0xe

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"


# instance fields
.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private final mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

.field private final mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssSatelliteBlacklistHelper:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

.field private final mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private volatile mHardwareModelName:Ljava/lang/String;

.field private volatile mHardwareYear:I

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private volatile mItarSpeedLimitExceeded:Z

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private final mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mNetworkToConnectionType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNmeaBuffer:[B

.field private final mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mRecord:Z

.field private mSingleShot:Z

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private final mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;

.field private final mdumpNmea:Lcom/android/server/location/GnssLocalLog;

.field private final mdumpStatus:Lcom/android/server/location/GnssLocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 117
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    .line 118
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    .line 120
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 2830
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 2831
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mRecord:Z

    .line 319
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 322
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 350
    new-instance v2, Lcom/android/server/location/ExponentialBackOff;

    const-wide/32 v3, 0x493e0

    const-wide/32 v5, 0xdbba00

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/location/ExponentialBackOff;-><init>(JJ)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;

    .line 363
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 372
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 375
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 390
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 392
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 399
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 402
    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 404
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 413
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 416
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 420
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-direct {v3}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    .line 425
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 426
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 459
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkToConnectionType:Ljava/util/HashMap;

    .line 471
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 476
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 484
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 489
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$1;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    .line 502
    new-instance v3, Lcom/android/server/location/GnssLocalLog;

    const/16 v4, 0x2710

    invoke-direct {v3, v4}, Lcom/android/server/location/GnssLocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mdumpNmea:Lcom/android/server/location/GnssLocalLog;

    .line 503
    new-instance v3, Lcom/android/server/location/GnssLocalLog;

    const/16 v4, 0x1f4

    invoke-direct {v3, v4}, Lcom/android/server/location/GnssLocalLog;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mdumpStatus:Lcom/android/server/location/GnssLocalLog;

    .line 526
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$2;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 553
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$3;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 567
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$4;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 591
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$5;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 2231
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$16;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$16;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2827
    const/16 v3, 0x78

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    .line 803
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 804
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 807
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 808
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProvider"

    invoke-virtual {v3, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 809
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 812
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProviderXtraDownload"

    invoke-virtual {v3, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 814
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 816
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 817
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 818
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 820
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 823
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 826
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 830
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 837
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    .line 839
    new-instance v1, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v1, p1, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 842
    const/16 v1, 0xd

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 844
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$7;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 856
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$8;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 863
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$9;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$9;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 869
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    .line 871
    new-instance v0, Lcom/android/server/location/NtpTimeHelper;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p0}, Lcom/android/server/location/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    .line 872
    new-instance v0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p0}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssSatelliteBlacklistHelper:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    .line 874
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssSatelliteBlacklistHelper:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;

    invoke-direct {v2, v1}, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;-><init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 875
    new-instance v0, Lcom/android/server/location/GnssBatchingProvider;

    invoke-direct {v0}, Lcom/android/server/location/GnssBatchingProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    .line 876
    new-instance v0, Lcom/android/server/location/GnssGeofenceProvider;

    invoke-direct {v0, p3}, Lcom/android/server/location/GnssGeofenceProvider;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    .line 877
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GnssLocationProvider;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 112
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_gps_lock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 112
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_emergency_supl_pdn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 112
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_gnss_pos_protocol_select(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 112
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_lpp_profile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 112
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_supl_es(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 112
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_supl_mode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    return-object v0
.end method

.method static synthetic access$2000(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 112
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_supl_version(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GnssLocationProvider;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/GnssLocationProvider;[BI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/ExponentialBackOff;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssMeasurementsProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNavigationMessageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 112
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/location/GnssLocationProvider;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartRequests()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/internal/location/gnssmetrics/GnssMetrics;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/location/GnssLocationProvider;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 112
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/net/Network;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateNetworkState(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestSuplConnection(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/location/GnssLocationProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GnssLocationProvider;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestLocation(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/location/Location;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300()V
    .registers 0

    .line 112
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_init_once()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/Properties;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method static synthetic access$5800()Z
    .registers 1

    .line 112
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 112
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GnssLocationProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    return-void
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 112
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method private addNmeaToBugreport(Ljava/lang/String;)V
    .registers 5
    .param p1, "nmea"    # Ljava/lang/String;

    .line 2822
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mdumpNmea:Lcom/android/server/location/GnssLocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=MI NMEA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssLocalLog;->log(Ljava/lang/String;)V

    .line 2823
    return-void
.end method

.method private addToBugreport(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 2809
    const-string v0, "=MI GLP= "

    .line 2810
    .local v0, "logTag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mdumpStatus:Lcom/android/server/location/GnssLocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/GnssLocalLog;->log(Ljava/lang/String;)V

    .line 2811
    return-void
.end method

.method private addToBugreportEncrypt(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 2816
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mdumpStatus:Lcom/android/server/location/GnssLocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=MI GLP EN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssLocalLog;->log(Ljava/lang/String;)V

    .line 2817
    return-void
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .registers 2

    .line 2707
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    packed-switch v0, :pswitch_data_12

    .line 2715
    const-string v0, "<Unknown>"

    return-object v0

    .line 2711
    :pswitch_8
    const-string v0, "OPEN"

    return-object v0

    .line 2713
    :pswitch_b
    const-string v0, "OPENING"

    return-object v0

    .line 2709
    :pswitch_e
    const-string v0, "CLOSED"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "agpsDataConnStatus"    # I

    .line 2723
    packed-switch p1, :pswitch_data_16

    .line 2735
    const-string v0, "<Unknown>"

    return-object v0

    .line 2729
    :pswitch_6
    const-string v0, "FAILED"

    return-object v0

    .line 2727
    :pswitch_9
    const-string v0, "DONE"

    return-object v0

    .line 2725
    :pswitch_c
    const-string v0, "CONNECTED"

    return-object v0

    .line 2731
    :pswitch_f
    const-string v0, "RELEASE"

    return-object v0

    .line 2733
    :pswitch_12
    const-string v0, "REQUEST"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1511
    if-nez p1, :cond_7

    .line 1512
    const v0, 0xffff

    .line 1512
    .local v0, "flags":I
    goto/16 :goto_95

    .line 1514
    .end local v0    # "flags":I
    :cond_7
    const/4 v0, 0x0

    .line 1515
    .restart local v0    # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x1

    .line 1516
    :cond_12
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    or-int/lit8 v0, v0, 0x2

    .line 1517
    :cond_1c
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    or-int/lit8 v0, v0, 0x4

    .line 1518
    :cond_27
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    or-int/lit8 v0, v0, 0x8

    .line 1519
    :cond_32
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    or-int/lit8 v0, v0, 0x10

    .line 1520
    :cond_3c
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    or-int/lit8 v0, v0, 0x20

    .line 1521
    :cond_47
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    or-int/lit8 v0, v0, 0x40

    .line 1522
    :cond_51
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    or-int/lit16 v0, v0, 0x80

    .line 1523
    :cond_5c
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    or-int/lit16 v0, v0, 0x100

    .line 1524
    :cond_67
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    or-int/lit16 v0, v0, 0x200

    .line 1525
    :cond_72
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    or-int/lit16 v0, v0, 0x400

    .line 1526
    :cond_7d
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1527
    :cond_89
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    const v1, 0xffff

    or-int/2addr v0, v1

    .line 1530
    :cond_95
    :goto_95
    if-eqz v0, :cond_b0

    .line 1531
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete aiding data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 1533
    const/4 v1, 0x1

    return v1

    .line 1536
    :cond_b0
    const/4 v1, 0x0

    return v1
.end method

.method private ensureInHandlerThread()V
    .registers 3

    .line 2697
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 2698
    return-void

    .line 2700
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .registers 11
    .param p1, "apn"    # Ljava/lang/String;

    .line 2619
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->ensureInHandlerThread()V

    .line 2620
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 2621
    return v0

    .line 2624
    :cond_7
    const-string v1, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2625
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2627
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_13
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "protocol"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string/jumbo v8, "name ASC"

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 2634
    if-eqz v2, :cond_42

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2635
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/location/GnssLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3c} :catch_60
    .catchall {:try_start_13 .. :try_end_3c} :catchall_5e

    .line 2642
    if-eqz v2, :cond_41

    .line 2643
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2635
    :cond_41
    return v3

    .line 2637
    :cond_42
    :try_start_42
    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No entry found in query for APN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_58} :catch_60
    .catchall {:try_start_42 .. :try_end_58} :catchall_5e

    .line 2642
    if-eqz v2, :cond_7a

    .line 2643
    :goto_5a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7a

    .line 2642
    :catchall_5e
    move-exception v0

    goto :goto_7b

    .line 2639
    :catch_60
    move-exception v3

    .line 2640
    .local v3, "e":Ljava/lang/Exception;
    :try_start_61
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error encountered on APN query for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_61 .. :try_end_77} :catchall_5e

    .line 2642
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_7a

    goto :goto_5a

    .line 2647
    :cond_7a
    :goto_7a
    return v0

    .line 2642
    :goto_7b
    if-eqz v2, :cond_80

    .line 2643
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_80
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .line 2133
    const/16 v0, -0x95

    if-eq p1, v0, :cond_19

    if-eqz p1, :cond_17

    const/16 v0, 0x64

    if-eq p1, v0, :cond_15

    packed-switch p1, :pswitch_data_1c

    .line 2147
    const/4 v0, -0x1

    return v0

    .line 2139
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 2145
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 2141
    :pswitch_13
    const/4 v0, 0x4

    return v0

    .line 2143
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 2135
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 2137
    :cond_19
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_1c
    .packed-switch -0x67
        :pswitch_13
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .registers 10

    .line 2593
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2594
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    move-object v8, v7

    .line 2596
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_8
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "apn"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "name ASC"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v8, v1

    .line 2602
    if-eqz v8, :cond_32

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2603
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_41
    .catchall {:try_start_8 .. :try_end_2c} :catchall_3f

    .line 2610
    if-eqz v8, :cond_31

    .line 2611
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2603
    :cond_31
    return-object v1

    .line 2605
    :cond_32
    :try_start_32
    const-string v1, "GnssLocationProvider"

    const-string v2, "No APN found to select."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_41
    .catchall {:try_start_32 .. :try_end_39} :catchall_3f

    .line 2610
    if-eqz v8, :cond_4c

    .line 2611
    :goto_3b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4c

    .line 2610
    :catchall_3f
    move-exception v1

    goto :goto_4d

    .line 2607
    :catch_41
    move-exception v1

    .line 2608
    .local v1, "e":Ljava/lang/Exception;
    :try_start_42
    const-string v2, "GnssLocationProvider"

    const-string v3, "Error encountered on selecting the APN."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3f

    .line 2610
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_4c

    goto :goto_3b

    .line 2615
    :cond_4c
    :goto_4c
    return-object v7

    .line 2610
    :goto_4d
    if-eqz v8, :cond_52

    .line 2611
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v1
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .registers 11
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .line 1236
    const/4 v0, 0x0

    if-eqz p2, :cond_4a

    .line 1237
    const-string v1, "SUPL_MODE"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1239
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1241
    :try_start_10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_16

    move v2, v3

    .line 1245
    goto :goto_2f

    .line 1242
    :catch_16
    move-exception v3

    .line 1243
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to parse SUPL_MODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return v0

    .line 1249
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2f
    :goto_2f
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_3c

    .line 1250
    const/4 v0, 0x1

    return v0

    .line 1255
    :cond_3c
    if-eqz p3, :cond_4a

    const/4 v4, 0x4

    .line 1256
    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_4a

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_4a

    .line 1258
    return v3

    .line 1261
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_4a
    return v0
.end method

.method private handleDisable()V
    .registers 3

    .line 1307
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_b
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1310
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1311
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1312
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1314
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->disable()V

    .line 1316
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    .line 1317
    const-string v0, "disable gnss "

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1319
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1320
    return-void
.end method

.method private handleDownloadXtraData()V
    .registers 4

    .line 1123
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-nez v0, :cond_c

    .line 1125
    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDownloadXtraData() called when Xtra not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-void

    .line 1128
    :cond_c
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1130
    return-void

    .line 1132
    :cond_12
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1135
    return-void

    .line 1137
    :cond_1c
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1140
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1141
    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadXtraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$10;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$10;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1183
    return-void
.end method

.method private handleEnable()V
    .registers 5

    .line 1265
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "GnssLocationProvider"

    const-string v1, "handleEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_b
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 1268
    .local v0, "enabled":Z
    const-string v1, "enable gnss "

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 1269
    if-eqz v0, :cond_44

    .line 1270
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    .line 1273
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 1274
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1276
    :cond_28
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 1277
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1280
    :cond_34
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1281
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1282
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->enable()V

    goto :goto_52

    .line 1284
    :cond_44
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1285
    const/4 v2, 0x0

    :try_start_48
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    .line 1286
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_53

    .line 1287
    const-string v1, "GnssLocationProvider"

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :goto_52
    return-void

    .line 1286
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method private handleReleaseSuplConnection(I)V
    .registers 8
    .param p1, "agpsDataConnStatus"    # I

    .line 1010
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_21

    .line 1011
    const-string/jumbo v0, "releaseSuplConnection, state=%s, status=%s"

    new-array v3, v2, [Ljava/lang/Object;

    .line 1013
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    .line 1014
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1011
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "message":Ljava/lang/String;
    const-string v3, "GnssLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .end local v0    # "message":Ljava/lang/String;
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseSuplConnection, state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "status = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 1019
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-nez v0, :cond_4c

    .line 1020
    return-void

    .line 1022
    :cond_4c
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1024
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1025
    if-eq p1, v2, :cond_75

    const/4 v0, 0x5

    if-eq p1, v0, :cond_71

    .line 1033
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status to release SUPL connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1027
    :cond_71
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_failed()V

    .line 1028
    goto :goto_79

    .line 1030
    :cond_75
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_closed()V

    .line 1031
    nop

    .line 1035
    :goto_79
    return-void
.end method

.method private handleReportLocation(ZLandroid/location/Location;)V
    .registers 8
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1655
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1656
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 1659
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_2c

    .line 1660
    const-string v0, "GnssLocationProvider"

    const-string v2, "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2b

    .line 1663
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1665
    :cond_2b
    return-void

    .line 1668
    :cond_2c
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_4b

    const-string v0, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportLocation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :cond_4b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1673
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1676
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    invoke-interface {v0, p2, v1}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_60} :catch_61

    .line 1679
    goto :goto_69

    .line 1677
    :catch_61
    move-exception v0

    .line 1678
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v3, "RemoteException calling reportLocation"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_69
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    .line 1683
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mRecord:Z

    .line 1685
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_9a

    .line 1686
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1687
    if-eqz p1, :cond_9a

    .line 1688
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1689
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1691
    :cond_87
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez v0, :cond_9a

    .line 1692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    .line 1693
    .local v0, "timeBetweenFixes":I
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v3, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logMissedReports(II)V

    .line 1698
    .end local v0    # "timeBetweenFixes":I
    :cond_9a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1700
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v0, :cond_10b

    if-eqz p1, :cond_10b

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_10b

    .line 1701
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1702
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_ce

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTFF: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_ce
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_d9

    .line 1704
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1708
    :cond_d9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTFF is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the first location is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreportEncrypt(Ljava/lang/String;)V

    .line 1715
    :cond_10b
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    if-eqz v0, :cond_112

    .line 1716
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1719
    :cond_112
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_14c

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14c

    .line 1723
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_12f

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v3, 0xea60

    if-ge v0, v3, :cond_12f

    .line 1724
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1728
    :cond_12f
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1729
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "enabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1731
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-static {v3, v4, v0}, Lcom/android/server/location/GpsLocationProviderInjector;->appendUidExtra(Landroid/os/WorkSource;ZLandroid/content/Intent;)V

    .line 1732
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1733
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1736
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_14c
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_16a

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_16a

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_16a

    .line 1738
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_167

    const-string v0, "GnssLocationProvider"

    const-string v1, "got fix, hibernating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_167
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    .line 1741
    :cond_16a
    return-void
.end method

.method private handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .registers 16
    .param p1, "info"    # Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    .line 1807
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v1, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    iget-object v2, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    iget-object v3, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    iget-object v4, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    iget-object v6, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F)V

    .line 1816
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v1, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    iget v2, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logCn0([FI)V

    .line 1818
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_36

    .line 1819
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_36
    const/4 v0, 0x0

    .line 1823
    .local v0, "usedInFixCount":I
    const/4 v1, 0x0

    .line 1824
    .local v1, "maxCn0":I
    const/4 v2, 0x0

    .line 1825
    .local v2, "meanCn0":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v0

    move v0, v3

    .line 1825
    .local v0, "i":I
    .local v1, "usedInFixCount":I
    .local v2, "maxCn0":I
    .local v4, "meanCn0":I
    :goto_3e
    iget v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v0, v5, :cond_f6

    .line 1826
    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v5, v5, v0

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_63

    .line 1827
    add-int/lit8 v1, v1, 0x1

    .line 1828
    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v5, v5, v0

    int-to-float v8, v2

    cmpl-float v5, v5, v8

    if-lez v5, :cond_5c

    .line 1829
    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v5, v5, v0

    float-to-int v2, v5

    .line 1831
    :cond_5c
    int-to-float v5, v4

    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v8, v8, v0

    add-float/2addr v5, v8

    float-to-int v4, v5

    .line 1833
    :cond_63
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v5, :cond_f2

    .line 1834
    const-string v5, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "svid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v9, v9, v0

    shr-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cn0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " elev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " azimuth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " carrier frequency: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1839
    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v9, v9, v0

    and-int/2addr v7, v9

    if-nez v7, :cond_b7

    .line 1840
    const-string v7, "  "

    goto :goto_b9

    :cond_b7
    const-string v7, " E"

    :goto_b9
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    iget-object v7, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    if-nez v6, :cond_c6

    .line 1842
    const-string v6, "  "

    goto :goto_c8

    :cond_c6
    const-string v6, " A"

    :goto_c8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    iget-object v6, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v6, v6, v0

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_d6

    .line 1844
    const-string v6, ""

    goto :goto_d8

    :cond_d6
    const-string v6, "U"

    :goto_d8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    iget-object v6, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v6, v6, v0

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_e6

    .line 1847
    const-string v6, ""

    goto :goto_e8

    :cond_e6
    const-string v6, "F"

    :goto_e8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1834
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_f2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3e

    .line 1853
    .end local v0    # "i":I
    :cond_f6
    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_1a4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v12, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x1388

    cmp-long v0, v8, v12

    if-lez v0, :cond_1a4

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mRecord:Z

    if-eqz v0, :cond_1a4

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1a4

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lose location, record last fix SV status, last location is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreportEncrypt(Ljava/lang/String;)V

    .line 1855
    move v0, v3

    .line 1855
    .restart local v0    # "i":I
    :goto_12b
    iget v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    if-ge v0, v5, :cond_1a2

    .line 1856
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "svid: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v8, v8, v0

    shr-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cn0: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v8, v8, v0

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " elev: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    aget v8, v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " azimuth: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    aget v8, v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1860
    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v8, v8, v0

    and-int/2addr v8, v7

    if-nez v8, :cond_174

    .line 1861
    const-string v8, "  "

    goto :goto_176

    :cond_174
    const-string v8, " E"

    :goto_176
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v8, v8, v0

    and-int/2addr v8, v6

    if-nez v8, :cond_183

    .line 1863
    const-string v8, "  "

    goto :goto_185

    :cond_183
    const-string v8, " A"

    :goto_185
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v8, v8, v0

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_193

    .line 1865
    const-string v8, ""

    goto :goto_195

    :cond_193
    const-string v8, "U"

    :goto_195
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1856
    invoke-direct {p0, v5}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 1855
    add-int/lit8 v0, v0, 0x1

    goto :goto_12b

    .line 1867
    .end local v0    # "i":I
    :cond_1a2
    iput-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mRecord:Z

    .line 1870
    :cond_1a4
    if-lez v1, :cond_1a7

    .line 1871
    div-int/2addr v4, v1

    .line 1874
    :cond_1a7
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1876
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_1dd

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-ne v0, v6, :cond_1dd

    iget-wide v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    cmp-long v0, v5, v10

    if-lez v0, :cond_1dd

    .line 1877
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v5, v8

    const-wide/16 v8, 0x2710

    cmp-long v0, v5, v8

    if-lez v0, :cond_1dd

    .line 1879
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1880
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1881
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1882
    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1884
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1dd
    return-void
.end method

.method private handleRequestLocation(Z)V
    .registers 16
    .param p1, "independentFromGnss"    # Z

    .line 1038
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1039
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 1040
    const-string v0, "GnssLocationProvider"

    const-string v1, "RequestLocation is denied due to too frequent requests."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_11
    return-void

    .line 1044
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1045
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "gnss_hal_location_request_duration_millis"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1049
    .local v4, "durationMillis":J
    cmp-long v1, v4, v2

    if-nez v1, :cond_2c

    .line 1050
    const-string v1, "GnssLocationProvider"

    const-string v2, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void

    .line 1054
    :cond_2c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1059
    .local v1, "locationManager":Landroid/location/LocationManager;
    if-eqz p1, :cond_3f

    .line 1061
    const-string/jumbo v2, "network"

    .line 1062
    .local v2, "provider":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 1062
    .local v3, "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    goto :goto_43

    .line 1065
    .end local v2    # "provider":Ljava/lang/String;
    .end local v3    # "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    :cond_3f
    const-string v2, "fused"

    .line 1066
    .restart local v2    # "provider":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 1069
    .restart local v3    # "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    :goto_43
    const-string v6, "GnssLocationProvider"

    const-string v7, "GNSS HAL Requesting location updates from %s provider for %d millis."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 1072
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v8, v13

    .line 1070
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1069
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    :try_start_5e
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 1076
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    .line 1074
    move-object v6, v1

    move-object v7, v2

    move-object v11, v3

    invoke-virtual/range {v6 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1077
    iget v6, v3, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    add-int/2addr v6, v13

    iput v6, v3, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    .line 1078
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;

    invoke-direct {v7, v3, v2, v1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;-><init>(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_79} :catch_7a

    .line 1087
    goto :goto_82

    .line 1085
    :catch_7a
    move-exception v6

    .line 1086
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "GnssLocationProvider"

    const-string v8, "Unable to request location."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1088
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_82
    return-void
.end method

.method private handleRequestSuplConnection(Ljava/net/InetAddress;)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 985
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 986
    const-string/jumbo v0, "requestSuplConnection, state=%s, address=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 988
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    .line 986
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, "message":Ljava/lang/String;
    const-string v3, "GnssLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .end local v0    # "message":Ljava/lang/String;
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSuplConnection state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " address = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 994
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v0, :cond_43

    .line 995
    return-void

    .line 997
    :cond_43
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 998
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1000
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1001
    .local v0, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1002
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1003
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1004
    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1007
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 1353
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1354
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1355
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1356
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .line 1186
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1187
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1188
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 1187
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    .line 1190
    :cond_16
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;)V
    .registers 20
    .param p1, "network"    # Landroid/net/Network;

    move-object/from16 v7, p0

    .line 903
    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 905
    .local v0, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 906
    .local v1, "networkAvailable":Z
    const/4 v2, 0x0

    .line 907
    .local v2, "isConnected":Z
    const/4 v3, -0x1

    .line 908
    .local v3, "type":I
    const/4 v4, 0x0

    .line 909
    .local v4, "isRoaming":Z
    const/4 v5, 0x0

    .line 911
    .local v5, "apnName":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_37

    .line 912
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_25

    move v6, v10

    goto :goto_26

    :cond_25
    move v6, v9

    :goto_26
    move v1, v6

    .line 913
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 914
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 915
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    .line 916
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    .line 919
    .end local v1    # "networkAvailable":Z
    .end local v2    # "isConnected":Z
    .end local v4    # "isRoaming":Z
    .end local v5    # "apnName":Ljava/lang/String;
    .local v11, "isConnected":Z
    .local v12, "isRoaming":Z
    .local v13, "networkAvailable":Z
    .local v14, "apnName":Ljava/lang/String;
    :cond_37
    move v13, v1

    move v11, v2

    move v12, v4

    move-object v14, v5

    if-eqz v11, :cond_45

    .line 920
    iget-object v1, v7, Lcom/android/server/location/GnssLocationProvider;->mNetworkToConnectionType:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "type":I
    .local v6, "info":Landroid/net/NetworkInfo;
    .local v15, "type":I
    :cond_42
    move-object v6, v0

    move v15, v3

    goto :goto_56

    .line 922
    .end local v6    # "info":Landroid/net/NetworkInfo;
    .end local v15    # "type":I
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    .restart local v3    # "type":I
    :cond_45
    iget-object v1, v7, Lcom/android/server/location/GnssLocationProvider;->mNetworkToConnectionType:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/NetworkInfo;

    .line 923
    if-eqz v0, :cond_42

    .line 924
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 928
    .end local v3    # "type":I
    .local v1, "type":I
    move-object v6, v0

    move v15, v1

    .line 928
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "type":I
    .restart local v6    # "info":Landroid/net/NetworkInfo;
    .restart local v15    # "type":I
    :goto_56
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v5, 0x5

    const/4 v4, 0x2

    if-eqz v0, :cond_83

    .line 929
    const-string v0, "UpdateNetworkState, type=%s, connected=%s, info=%s, capabilities=%S, network=%s"

    new-array v1, v5, [Ljava/lang/Object;

    .line 931
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    .line 932
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v10

    aput-object v6, v1, v4

    const/4 v2, 0x3

    iget-object v3, v7, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 934
    invoke-virtual {v3, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v8, v1, v2

    .line 929
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .end local v0    # "message":Ljava/lang/String;
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateNetworkState state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 941
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-direct {v7, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 943
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "defaultApn":Ljava/lang/String;
    if-nez v0, :cond_c7

    .line 946
    const-string v0, "dummy-apn"

    .line 949
    .end local v0    # "defaultApn":Ljava/lang/String;
    .local v16, "defaultApn":Ljava/lang/String;
    :cond_c7
    move-object/from16 v16, v0

    move-object v0, v7

    move v1, v11

    move v2, v15

    move v3, v12

    move v9, v4

    move v4, v13

    move-object v5, v14

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    .line 949
    .end local v6    # "info":Landroid/net/NetworkInfo;
    .local v17, "info":Landroid/net/NetworkInfo;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 956
    .end local v16    # "defaultApn":Ljava/lang/String;
    goto :goto_e6

    .line 956
    .end local v17    # "info":Landroid/net/NetworkInfo;
    .restart local v6    # "info":Landroid/net/NetworkInfo;
    :cond_d8
    move v9, v4

    move-object/from16 v17, v6

    .line 956
    .end local v6    # "info":Landroid/net/NetworkInfo;
    .restart local v17    # "info":Landroid/net/NetworkInfo;
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_e6

    .line 957
    const-string v0, "GnssLocationProvider"

    const-string v1, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_e6
    :goto_e6
    iget v0, v7, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-ne v0, v10, :cond_11c

    .line 961
    if-eqz v11, :cond_118

    .line 962
    if-nez v14, :cond_f0

    .line 965
    const-string v14, "dummy-apn"

    .line 967
    :cond_f0
    invoke-direct {v7, v14}, Lcom/android/server/location/GnssLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v0

    .line 968
    .local v0, "apnIpType":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->setRouting()V

    .line 969
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_112

    .line 970
    const-string/jumbo v1, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    .line 973
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    .line 970
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "message":Ljava/lang/String;
    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    .end local v1    # "message":Ljava/lang/String;
    :cond_112
    invoke-direct {v7, v14, v0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 977
    iput v9, v7, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 978
    .end local v0    # "apnIpType":I
    goto :goto_11c

    .line 979
    :cond_118
    const/4 v0, 0x5

    invoke-direct {v7, v0}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    .line 982
    :cond_11c
    :goto_11c
    return-void
.end method

.method private hasCapability(I)Z
    .registers 3
    .param p1, "capability"    # I

    .line 1643
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private hibernate()V
    .registers 8

    .line 1632
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1633
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1634
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1635
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1636
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1640
    return-void
.end method

.method private injectBestLocation(Landroid/location/Location;)V
    .registers 33
    .param p1, "location"    # Landroid/location/Location;

    .line 1091
    nop

    .line 1092
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/4 v2, 0x1

    or-int/2addr v0, v2

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x4

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    or-int/2addr v0, v2

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0x8

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    or-int/2addr v0, v2

    .line 1095
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x10

    goto :goto_2c

    :cond_2b
    move v2, v1

    :goto_2c
    or-int/2addr v0, v2

    .line 1096
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0x20

    goto :goto_37

    :cond_36
    move v2, v1

    :goto_37
    or-int/2addr v0, v2

    .line 1097
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v2

    if-eqz v2, :cond_41

    const/16 v2, 0x40

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    or-int/2addr v0, v2

    .line 1098
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v2

    if-eqz v2, :cond_4c

    const/16 v1, 0x80

    nop

    :cond_4c
    or-int/2addr v0, v1

    .line 1100
    .local v0, "gnssLocationFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    .line 1101
    .local v18, "latitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    .line 1102
    .local v20, "longitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v22

    .line 1103
    .local v22, "altitudeMeters":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    .line 1104
    .local v1, "speedMetersPerSec":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v24

    .line 1105
    .local v24, "bearingDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v25

    .line 1106
    .local v25, "horizontalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v26

    .line 1107
    .local v26, "verticalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v27

    .line 1108
    .local v27, "speedAccuracyMetersPerSecond":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v28

    .line 1109
    .local v28, "bearingAccuracyDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v29

    .line 1110
    .local v29, "timestamp":J
    move-object/from16 v2, p0

    move v3, v0

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move v10, v1

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v15, v28

    move-wide/from16 v16, v29

    invoke-direct/range {v2 .. v17}, Lcom/android/server/location/GnssLocationProvider;->native_inject_best_location(IDDDFFFFFFJ)V

    .line 1114
    return-void
.end method

.method private isDataNetworkConnected()Z
    .registers 3

    .line 2689
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2690
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private isRequestLocationRateLimited()Z
    .registers 2

    .line 1119
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 665
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleRequestLocation$1(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .registers 7
    .param p0, "locationListener"    # Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationManager"    # Landroid/location/LocationManager;

    .line 1079
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    if-nez v0, :cond_1b

    .line 1080
    const-string v0, "GnssLocationProvider"

    const-string v2, "Removing location updates from %s provider."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 1081
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1084
    :cond_1b
    return-void
.end method

.method static synthetic lambda$onUpdateSatelliteBlacklist$0([I[I)V
    .registers 2
    .param p0, "constellations"    # [I
    .param p1, "svids"    # [I

    .line 605
    invoke-static {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->native_set_satellite_blacklist([I[I)Z

    .line 606
    return-void
.end method

.method public static synthetic lambda$reportGnssServiceDied$2(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 3

    .line 2042
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 2043
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_init_once()V

    .line 2044
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2046
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    .line 2048
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 2050
    :cond_16
    return-void
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .registers 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .line 785
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_1b

    .line 786
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 788
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 789
    invoke-virtual {p2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_16

    .line 791
    :try_start_f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 792
    nop

    .line 797
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    nop

    .line 798
    const/4 v0, 0x1

    return v0

    .line 791
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_16
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_1b

    .line 794
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catch_1b
    move-exception v0

    .line 795
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_36

    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open GPS configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_36
    const/4 v1, 0x0

    return v1
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .line 766
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "configValues":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_6c

    aget-object v4, v0, v3

    .line 769
    .local v4, "item":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_2c

    const-string v5, "GnssLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GpsParamsResource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_2c
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 772
    .local v5, "index":I
    if-lez v5, :cond_52

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_52

    .line 773
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 774
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 775
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 776
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_69

    .line 777
    :cond_52
    const-string v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "index":I
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 780
    :cond_6c
    return-void
.end method

.method private messageIdAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # I

    .line 2743
    packed-switch p1, :pswitch_data_30

    .line 2773
    :pswitch_3
    const-string v0, "<Unknown>"

    return-object v0

    .line 2771
    :pswitch_6
    const-string v0, "REPORT_SV_STATUS"

    return-object v0

    .line 2769
    :pswitch_9
    const-string v0, "REPORT_LOCATION"

    return-object v0

    .line 2757
    :pswitch_c
    const-string v0, "REQUEST_LOCATION"

    return-object v0

    .line 2753
    :pswitch_f
    const-string v0, "RELEASE_SUPL_CONNECTION"

    return-object v0

    .line 2751
    :pswitch_12
    const-string v0, "REQUEST_SUPL_CONNECTION"

    return-object v0

    .line 2767
    :pswitch_15
    const-string v0, "INITIALIZE_HANDLER"

    return-object v0

    .line 2765
    :pswitch_18
    const-string v0, "SUBSCRIPTION_OR_SIM_CHANGED"

    return-object v0

    .line 2761
    :pswitch_1b
    const-string v0, "DOWNLOAD_XTRA_DATA_FINISHED"

    return-object v0

    .line 2763
    :pswitch_1e
    const-string v0, "UPDATE_LOCATION"

    return-object v0

    .line 2759
    :pswitch_21
    const-string v0, "DOWNLOAD_XTRA_DATA"

    return-object v0

    .line 2755
    :pswitch_24
    const-string v0, "INJECT_NTP_TIME"

    return-object v0

    .line 2749
    :pswitch_27
    const-string v0, "UPDATE_NETWORK_STATE"

    return-object v0

    .line 2747
    :pswitch_2a
    const-string v0, "SET_REQUEST"

    return-object v0

    .line 2745
    :pswitch_2d
    const-string v0, "ENABLE"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private static native native_init_once()V
.end method

.method private native native_inject_best_location(IDDDFFFFFFJ)V
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private static native native_set_emergency_supl_pdn(I)Z
.end method

.method private static native native_set_gnss_pos_protocol_select(I)Z
.end method

.method private static native native_set_gps_lock(I)Z
.end method

.method private static native native_set_lpp_profile(I)Z
.end method

.method private native native_set_position_mode(IIIIIZ)Z
.end method

.method private static native native_set_satellite_blacklist([I[I)Z
.end method

.method private static native native_set_supl_es(I)Z
.end method

.method private static native native_set_supl_mode(I)Z
.end method

.method private static native native_set_supl_version(I)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private releaseSuplConnection(I)V
    .registers 4
    .param p1, "connStatus"    # I

    .line 1924
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1925
    return-void
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .line 673
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset GPS properties, previous size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 676
    const-string/jumbo v0, "persist.sys.gps.lpp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "lpp_prof":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 679
    const-string v1, "LPP_PROFILE"

    invoke-virtual {p2, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 684
    :cond_33
    const-string v1, "/etc/gps_debug.conf"

    invoke-direct {p0, v1, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 686
    const-string v1, "SUPL_HOST"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUPL_PORT"

    .line 687
    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v1, "C2K_HOST"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 689
    const-string v1, "C2K_PORT"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "portString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v2, :cond_7a

    if-eqz v1, :cond_7a

    .line 692
    :try_start_5b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_61} :catch_62

    .line 695
    goto :goto_7a

    .line 693
    :catch_62
    move-exception v2

    .line 694
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to parse C2K_PORT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_7a
    :goto_7a
    const-string v2, "NMEA_LEN"

    const-string v3, "20000"

    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 705
    .local v2, "nmeaLen":I
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mdumpNmea:Lcom/android/server/location/GnssLocalLog;

    invoke-virtual {v3, v2}, Lcom/android/server/location/GnssLocalLog;->setLength(I)I

    .line 707
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_configuration_supported()Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 708
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$6;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 722
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 723
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 724
    .local v6, "propertyName":Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 725
    .local v7, "propertyValueString":Ljava/lang/String;
    if-eqz v7, :cond_f9

    .line 727
    :try_start_b6
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 728
    .local v8, "propertyValueInt":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;

    invoke-interface {v9, v8}, Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;->set(I)Z

    move-result v9

    .line 729
    .local v9, "result":Z
    if-nez v9, :cond_e0

    .line 730
    const-string v10, "GnssLocationProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to set "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_e0} :catch_e1

    .line 734
    .end local v8    # "propertyValueInt":I
    .end local v9    # "result":Z
    :cond_e0
    goto :goto_f9

    .line 732
    :catch_e1
    move-exception v8

    .line 733
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v9, "GnssLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to parse propertyName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v7    # "propertyValueString":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_f9
    :goto_f9
    goto :goto_9e

    .line 737
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    :cond_fa
    goto :goto_106

    :cond_fb
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_106

    .line 738
    const-string v3, "GnssLocationProvider"

    const-string v4, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_106
    :goto_106
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v4, "SUPL_ES"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, "suplESProperty":Ljava/lang/String;
    if-eqz v3, :cond_134

    .line 746
    :try_start_110
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_118

    goto :goto_119

    :cond_118
    const/4 v5, 0x0

    :goto_119
    iput-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z
    :try_end_11b
    .catch Ljava/lang/NumberFormatException; {:try_start_110 .. :try_end_11b} :catch_11c

    .line 749
    goto :goto_134

    .line 747
    :catch_11c
    move-exception v4

    .line 748
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "GnssLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to parse SUPL_ES: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_134
    :goto_134
    const-string v4, "ES_EXTENSION_SEC"

    const-string v5, "0"

    .line 753
    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, "emergencyExtensionSecondsString":Ljava/lang/String;
    nop

    .line 756
    :try_start_13d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 757
    .local v5, "emergencyExtensionSeconds":I
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v6, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V
    :try_end_146
    .catch Ljava/lang/NumberFormatException; {:try_start_13d .. :try_end_146} :catch_147

    .line 761
    .end local v5    # "emergencyExtensionSeconds":I
    goto :goto_15f

    .line 758
    :catch_147
    move-exception v5

    .line 759
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to parse ES_EXTENSION_SEC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_15f
    return-void
.end method

.method private reportAGpsStatus(II[B)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .line 1890
    packed-switch p2, :pswitch_data_be

    .line 1919
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_bc

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Unknown AGPS status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 1916
    :pswitch_1f
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_bc

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 1913
    :pswitch_2c
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_bc

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 1910
    :pswitch_39
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_bc

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 1906
    :pswitch_46
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_51

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_51
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    .line 1908
    goto :goto_bc

    .line 1892
    :pswitch_56
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_61

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_61
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SUPL IP addr[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const/4 v0, 0x0

    .line 1895
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    if-eqz p3, :cond_b5

    .line 1897
    :try_start_7e
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    .line 1898
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_9d

    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP address converted to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/net/UnknownHostException; {:try_start_7e .. :try_end_9d} :catch_9e

    .line 1901
    :cond_9d
    goto :goto_b5

    .line 1899
    :catch_9e
    move-exception v1

    .line 1900
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1903
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_b5
    :goto_b5
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1904
    nop

    .line 1921
    .end local v0    # "connectionIpAddress":Ljava/net/InetAddress;
    :cond_bc
    :goto_bc
    return-void

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_56
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_1f
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2192
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2193
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2195
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 2196
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2212
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2213
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2215
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 2216
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2202
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2203
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2205
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 2206
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2222
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2223
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2225
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 2226
    return-void
.end method

.method private reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 2174
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2175
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2177
    :cond_c
    const/4 v0, 0x1

    .line 2178
    .local v0, "monitorStatus":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    .line 2179
    const/4 v0, 0x0

    .line 2181
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v2, 0x0

    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 2186
    return-void
.end method

.method private reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 15
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J

    .line 2157
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2158
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2161
    :cond_c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v7, 0x0

    sget v8, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 2168
    return-void
.end method

.method private reportGnssServiceDied()V
    .registers 3

    .line 2040
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportGnssServiceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$DbwtCzCTIv9vxK6aWV22ONkgWSg;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$DbwtCzCTIv9vxK6aWV22ONkgWSg;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2051
    return-void
.end method

.method private reportLocation(ZLandroid/location/Location;)V
    .registers 4
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1651
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1652
    return-void
.end method

.method private reportLocationBatch([Landroid/location/Location;)V
    .registers 6
    .param p1, "locationArray"    # [Landroid/location/Location;

    .line 2110
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2111
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 2112
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location batch of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    invoke-interface {v1, v0}, Landroid/location/ILocationManager;->reportLocationBatch(Ljava/util/List;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    .line 2118
    goto :goto_37

    .line 2116
    :catch_2f
    move-exception v1

    .line 2117
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GnssLocationProvider"

    const-string v3, "RemoteException calling reportLocationBatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 1952
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 1954
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/GnssLocationProvider$11;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1961
    :cond_e
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 4
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 1967
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 1969
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/GnssLocationProvider$12;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1976
    :cond_e
    return-void
.end method

.method private reportNmea(J)V
    .registers 8
    .param p1, "timestamp"    # J

    .line 1931
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_41

    .line 1932
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1933
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1934
    .local v1, "nmea":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_30

    const-string v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nmea = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_30
    const-string v2, "$P"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1939
    return-void

    .line 1943
    :cond_39
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->addNmeaToBugreport(Ljava/lang/String;)V

    .line 1944
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1946
    .end local v0    # "length":I
    .end local v1    # "nmea":Ljava/lang/String;
    :cond_41
    return-void
.end method

.method private reportStatus(I)V
    .registers 6
    .param p1, "status"    # I

    .line 1747
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1749
    .local v0, "wasNavigating":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_5c

    goto :goto_33

    .line 1761
    :pswitch_23
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1762
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_33

    .line 1758
    :pswitch_28
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1759
    goto :goto_33

    .line 1755
    :pswitch_2b
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1756
    goto :goto_33

    .line 1751
    :pswitch_2e
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1752
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1753
    nop

    .line 1766
    :goto_33
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eq v0, v1, :cond_5a

    .line 1767
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v1, v2}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 1770
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1771
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1774
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-static {v2, v3, v1}, Lcom/android/server/location/GpsLocationProviderInjector;->appendUidExtra(Landroid/os/WorkSource;ZLandroid/content/Intent;)V

    .line 1776
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1778
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_23
    .end packed-switch
.end method

.method private reportSvStatus(I[I[F[F[F[F)V
    .registers 10
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "svElevations"    # [F
    .param p5, "svAzimuths"    # [F
    .param p6, "svCarrierFreqs"    # [F

    .line 1795
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;-><init>(Lcom/android/server/location/GnssLocationProvider$1;)V

    .line 1796
    .local v0, "svStatusInfo":Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;
    iput p1, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    .line 1797
    iput-object p2, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    .line 1798
    iput-object p3, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    .line 1799
    iput-object p4, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    .line 1800
    iput-object p5, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    .line 1801
    iput-object p6, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    .line 1803
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1804
    return-void
.end method

.method private requestLocation(Z)V
    .registers 5
    .param p1, "independentFromGnss"    # Z

    .line 2331
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 2332
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLocation. independentFromGnss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_1b
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2335
    return-void
.end method

.method private requestRefLocation()V
    .registers 15

    .line 2349
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 2350
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2351
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 2352
    .local v1, "phoneType":I
    const-string/jumbo v2, "requestRefLocation "

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 2353
    const/4 v2, 0x1

    if-ne v1, v2, :cond_7c

    .line 2354
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 2355
    .local v3, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v3, :cond_74

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_74

    .line 2356
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_74

    .line 2358
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2359
    .local v4, "mcc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2360
    .local v12, "mnc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    .line 2361
    .local v13, "networkType":I
    if-eq v13, v5, :cond_62

    const/16 v5, 0x8

    if-eq v13, v5, :cond_62

    const/16 v5, 0x9

    if-eq v13, v5, :cond_62

    const/16 v5, 0xa

    if-eq v13, v5, :cond_62

    const/16 v5, 0xf

    if-ne v13, v5, :cond_61

    goto :goto_62

    .line 2368
    :cond_61
    goto :goto_63

    .line 2366
    :cond_62
    :goto_62
    const/4 v2, 0x2

    .line 2368
    .local v7, "type":I
    :goto_63
    move v7, v2

    .line 2370
    nop

    .line 2371
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v11

    .line 2370
    move-object v6, p0

    move v8, v4

    move v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2372
    .end local v4    # "mcc":I
    .end local v7    # "type":I
    .end local v12    # "mnc":I
    .end local v13    # "networkType":I
    goto :goto_7b

    .line 2373
    :cond_74
    const-string v2, "GnssLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    .end local v3    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :goto_7b
    goto :goto_86

    :cond_7c
    const/4 v2, 0x2

    if-ne v1, v2, :cond_86

    .line 2376
    const-string v2, "GnssLocationProvider"

    const-string v3, "CDMA not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_86
    :goto_86
    return-void
.end method

.method private requestSetID(I)V
    .registers 7
    .param p1, "flags"    # I

    .line 2299
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 2300
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2301
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 2302
    .local v1, "type":I
    const-string v2, ""

    .line 2304
    .local v2, "data":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSetID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 2305
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    .line 2306
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 2307
    .local v3, "data_temp":Ljava/lang/String;
    if-nez v3, :cond_2f

    .line 2307
    .end local v3    # "data_temp":Ljava/lang/String;
    goto :goto_31

    .line 2311
    .restart local v3    # "data_temp":Ljava/lang/String;
    :cond_2f
    move-object v2, v3

    .line 2312
    const/4 v1, 0x1

    .line 2314
    .end local v3    # "data_temp":Ljava/lang/String;
    :goto_31
    goto :goto_40

    :cond_32
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_40

    .line 2315
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 2316
    .restart local v3    # "data_temp":Ljava/lang/String;
    if-nez v3, :cond_3e

    .line 2316
    .end local v3    # "data_temp":Ljava/lang/String;
    goto :goto_40

    .line 2320
    .restart local v3    # "data_temp":Ljava/lang/String;
    :cond_3e
    move-object v2, v3

    .line 2321
    const/4 v1, 0x2

    .line 2324
    .end local v3    # "data_temp":Ljava/lang/String;
    :cond_40
    :goto_40
    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2325
    return-void
.end method

.method private requestUtcTime()V
    .registers 4

    .line 2341
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :cond_c
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2343
    return-void
.end method

.method private restartLocationRequest()V
    .registers 3

    .line 2013
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 2015
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 2016
    return-void
.end method

.method private restartRequests()V
    .registers 3

    .line 2003
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartLocationRequest()V

    .line 2006
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->resumeIfStarted()V

    .line 2007
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->resumeIfStarted()V

    .line 2008
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->resumeIfStarted()V

    .line 2009
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssGeofenceProvider;->resumeIfStarted()V

    .line 2010
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 7
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2384
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2385
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2386
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock acquired by sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_3d
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2390
    return-void
.end method

.method private setEngineCapabilities(I)V
    .registers 4
    .param p1, "capabilities"    # I

    .line 1983
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/GnssLocationProvider$13;-><init>(Lcom/android/server/location/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2000
    return-void
.end method

.method private setGnssHardwareModelName(Ljava/lang/String;)V
    .registers 5
    .param p1, "modelName"    # Ljava/lang/String;

    .line 2032
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGnssModelName called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    :cond_1b
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    .line 2034
    return-void
.end method

.method private setGnssYearOfHardware(I)V
    .registers 5
    .param p1, "yearOfHardware"    # I

    .line 2023
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGnssYearOfHardware called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :cond_1b
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 2025
    return-void
.end method

.method private setRouting()V
    .registers 5

    .line 2668
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_5

    .line 2669
    return-void

    .line 2673
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2677
    .local v0, "result":Z
    if-nez v0, :cond_29

    .line 2678
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 2679
    :cond_29
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_45

    .line 2680
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :cond_45
    :goto_45
    return-void
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .line 1208
    if-eqz p1, :cond_4

    .line 1209
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1211
    :cond_4
    if-eqz p2, :cond_25

    .line 1213
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c} :catch_d

    .line 1216
    goto :goto_25

    .line 1214
    :catch_d
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_59

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    if-lez v0, :cond_59

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const v1, 0xffff

    if-gt v0, v1, :cond_59

    .line 1221
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set supl host "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 1224
    :cond_59
    return-void
.end method

.method private startNavigating(Z)V
    .registers 13
    .param p1, "singleShot"    # Z

    .line 1540
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_ef

    .line 1541
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating, singleShot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1543
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1544
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1545
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1546
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1549
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v2, :cond_39

    .line 1550
    const-string v2, "GnssLocationProvider"

    const-string/jumbo v3, "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_39
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1555
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_49

    move v2, v1

    goto :goto_4a

    :cond_49
    move v2, v0

    .line 1557
    .local v2, "agpsEnabled":Z
    :goto_4a
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1559
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_81

    .line 1562
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    packed-switch v3, :pswitch_data_f0

    .line 1573
    const-string/jumbo v3, "unknown"

    goto :goto_69

    .line 1567
    :pswitch_5f
    const-string v3, "MS_ASSISTED"

    .line 1568
    .local v3, "mode":Ljava/lang/String;
    goto :goto_69

    .line 1570
    .end local v3    # "mode":Ljava/lang/String;
    :pswitch_62
    const-string v3, "MS_BASED"

    .line 1571
    .restart local v3    # "mode":Ljava/lang/String;
    goto :goto_69

    .line 1564
    .end local v3    # "mode":Ljava/lang/String;
    :pswitch_65
    const-string/jumbo v3, "standalone"

    .line 1565
    .restart local v3    # "mode":Ljava/lang/String;
    nop

    .line 1573
    :goto_69
    nop

    .line 1576
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting position_mode to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    .end local v3    # "mode":Ljava/lang/String;
    :cond_81
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    :goto_89
    move v7, v3

    goto :goto_8e

    :cond_8b
    const/16 v3, 0x3e8

    goto :goto_89

    .line 1580
    .local v7, "interval":I
    :goto_8e
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v3, v3, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1581
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 1583
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1584
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    return-void

    .line 1587
    :cond_ad
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    move-result v3

    if-nez v3, :cond_be

    .line 1588
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1589
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    return-void

    .line 1594
    :cond_be
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1595
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1596
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 1597
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 1600
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_e9

    .line 1601
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 1602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1601
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1605
    :cond_e9
    const-string/jumbo v0, "start gnss engine "

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 1610
    .end local v2    # "agpsEnabled":Z
    .end local v7    # "interval":I
    :cond_ef
    return-void

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_65
        :pswitch_62
        :pswitch_5f
    .end packed-switch
.end method

.method private stopNavigating()V
    .registers 3

    .line 1613
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2b

    .line 1615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1616
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1617
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    .line 1618
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1621
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1622
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1623
    const-string/jumbo v0, "stop gnss engine "

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->addToBugreport(Ljava/lang/String;)V

    .line 1628
    :cond_2b
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 610
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "received SIM related action: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 613
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 614
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 615
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "mccMnc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 617
    .local v3, "isKeepLppProfile":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 618
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_46

    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM MCC/MNC is available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_46
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 620
    if-eqz v1, :cond_5c

    .line 621
    :try_start_4b
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v5

    .line 622
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_5c

    .line 623
    const-string/jumbo v6, "persist_lpp_mode_bool"

    .line 624
    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 624
    .end local v5    # "b":Landroid/os/PersistableBundle;
    goto :goto_5c

    .line 641
    :catchall_5a
    move-exception v5

    goto :goto_8a

    .line 627
    :cond_5c
    :goto_5c
    if-eqz v3, :cond_74

    .line 629
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 630
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "LPP_PROFILE"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, "lpp_profile":Ljava/lang/String;
    if-eqz v5, :cond_73

    .line 633
    const-string/jumbo v6, "persist.sys.gps.lpp"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .end local v5    # "lpp_profile":Ljava/lang/String;
    :cond_73
    goto :goto_7c

    .line 637
    :cond_74
    const-string/jumbo v5, "persist.sys.gps.lpp"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :goto_7c
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 640
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 641
    monitor-exit v4

    goto :goto_97

    :goto_8a
    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_4b .. :try_end_8b} :catchall_5a

    throw v5

    .line 643
    :cond_8c
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_97

    const-string v4, "GnssLocationProvider"

    const-string v5, "SIM MCC/MNC is still not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_97
    :goto_97
    return-void
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .line 2651
    const-string v0, "IP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2652
    return v1

    .line 2654
    :cond_a
    const-string v0, "IPV6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    .line 2655
    return v2

    .line 2657
    :cond_14
    const-string v0, "IPV4V6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2658
    const/4 v0, 0x3

    return v0

    .line 2662
    :cond_1e
    const-string v0, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2663
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    return v3
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "source"    # Landroid/os/WorkSource;

    .line 1422
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1423
    return-void

    .line 1428
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 1431
    goto :goto_19

    .line 1429
    :catch_11
    move-exception v0

    .line 1430
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1435
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    .line 1436
    .local v0, "diffs":[Ljava/util/List;, "[Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6b

    .line 1437
    aget-object v4, v0, v3

    .line 1438
    .local v4, "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    aget-object v5, v0, v2

    .line 1440
    .local v5, "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v4, :cond_47

    .line 1441
    move v6, v3

    .local v6, "i":I
    :goto_2b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_47

    .line 1442
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1443
    .local v7, "newChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1444
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1443
    invoke-virtual {v8, v1, v9, v10}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1441
    .end local v7    # "newChain":Landroid/os/WorkSource$WorkChain;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 1448
    .end local v6    # "i":I
    :cond_47
    if-eqz v5, :cond_66

    .line 1449
    move v6, v3

    .restart local v6    # "i":I
    :goto_4a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_66

    .line 1450
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1451
    .local v7, "goneChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1452
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1451
    invoke-virtual {v8, v1, v9, v10}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1449
    .end local v7    # "goneChain":Landroid/os/WorkSource$WorkChain;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 1456
    .end local v6    # "i":I
    :cond_66
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v6, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1460
    .end local v4    # "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    .end local v5    # "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    :cond_6b
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v4, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v4

    .line 1461
    .local v4, "changes":[Landroid/os/WorkSource;
    if-eqz v4, :cond_a9

    .line 1462
    aget-object v5, v4, v3

    .line 1463
    .local v5, "newWork":Landroid/os/WorkSource;
    aget-object v2, v4, v2

    .line 1466
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_90

    .line 1467
    move v6, v3

    .restart local v6    # "i":I
    :goto_7a
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v6, v7, :cond_90

    .line 1468
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1469
    invoke-virtual {v5, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v8

    invoke-virtual {v5, v6}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    .line 1468
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1467
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    .line 1474
    .end local v6    # "i":I
    :cond_90
    if-eqz v2, :cond_a9

    .line 1475
    nop

    .local v3, "i":I
    :goto_93
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v3, v6, :cond_a9

    .line 1476
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v7, v8}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1475
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 1480
    .end local v2    # "goneWork":Landroid/os/WorkSource;
    .end local v3    # "i":I
    .end local v5    # "newWork":Landroid/os/WorkSource;
    :cond_a9
    return-void
.end method

.method private updateLowPowerMode()V
    .registers 5

    .line 649
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 650
    .local v0, "disableGps":Z
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 651
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    .line 652
    .local v1, "result":Landroid/os/PowerSaveState;
    iget v3, v1, Landroid/os/PowerSaveState;->gpsMode:I

    if-eq v3, v2, :cond_12

    goto :goto_21

    .line 655
    :cond_12
    iget-boolean v3, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    or-int/2addr v0, v2

    .line 658
    :goto_21
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-eq v0, v2, :cond_2a

    .line 659
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 660
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 662
    :cond_2a
    return-void
.end method

.method private updateRequirements()V
    .registers 10

    .line 1360
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_a

    goto/16 :goto_106

    .line 1364
    :cond_a
    const/4 v0, 0x0

    .line 1367
    .local v0, "singleShot":Z
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    .line 1368
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_39

    .line 1371
    const/4 v0, 0x1

    .line 1373
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationRequest;

    .line 1374
    .local v3, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v4

    if-eq v4, v2, :cond_38

    .line 1375
    const/4 v0, 0x0

    .line 1377
    .end local v3    # "lr":Landroid/location/LocationRequest;
    :cond_38
    goto :goto_25

    .line 1380
    :cond_39
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_56

    const-string v1, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRequest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_56
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v1, :cond_ec

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-nez v1, :cond_ec

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 1383
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1385
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v3, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v1, v3

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1386
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1388
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v5, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a2

    .line 1389
    const-string v1, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interval overflow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v4, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1394
    :cond_a2
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v1, :cond_c5

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 1396
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v1

    if-nez v1, :cond_105

    .line 1398
    const-string v1, "GnssLocationProvider"

    const-string/jumbo v2, "set_position_mode failed in updateRequirements"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105

    .line 1400
    :cond_c5
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v1, :cond_cd

    .line 1402
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    goto :goto_105

    .line 1405
    :cond_cd
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1406
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v2, 0xea60

    if-lt v1, v2, :cond_105

    .line 1409
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 1410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1409
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_105

    .line 1413
    :cond_ec
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1415
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1416
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1417
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1419
    :cond_105
    :goto_105
    return-void

    .line 1361
    .end local v0    # "singleShot":Z
    :cond_106
    :goto_106
    return-void
.end method

.method private updateStatus(I)V
    .registers 4
    .param p1, "status"    # I

    .line 1336
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-eq p1, v0, :cond_c

    .line 1337
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 1338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 1340
    :cond_c
    return-void
.end method

.method private xtraDownloadRequest()V
    .registers 4

    .line 2125
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    :cond_c
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2127
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 4

    .line 1298
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1299
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 1300
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    .line 1301
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 1303
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1304
    return-void

    .line 1301
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2781
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "  mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2782
    const-string v2, "  mFixInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2783
    const-string v2, "  mLowPowerMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2784
    const-string v2, "  mGnssMeasurementsProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 2785
    invoke-virtual {v2}, Lcom/android/server/location/GnssMeasurementsProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2786
    const-string v2, "  mGnssNavigationMessageProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 2787
    invoke-virtual {v2}, Lcom/android/server/location/GnssNavigationMessageProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2788
    const-string v2, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2789
    const-string v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2790
    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2792
    :cond_7c
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_88

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    :cond_88
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_94

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2794
    :cond_94
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2795
    :cond_a1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_ae

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2796
    :cond_ae
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_bb

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    :cond_bb
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_c8

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    :cond_c8
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_d5

    const-string v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    :cond_d5
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    const-string v1, "  native internal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mdumpStatus:Lcom/android/server/location/GnssLocalLog;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/GnssLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2804
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mdumpNmea:Lcom/android/server/location/GnssLocalLog;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/GnssLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2805
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2806
    return-void
.end method

.method public enable()V
    .registers 4

    .line 1199
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1200
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 1201
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    .line 1202
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 1204
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1205
    return-void

    .line 1202
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;
    .registers 2

    .line 2084
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    return-object v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .registers 2

    .line 516
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;
    .registers 2

    .line 2098
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$15;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$15;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Landroid/location/IGnssStatusProvider;
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .registers 2

    .line 2068
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$14;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$14;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 884
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .line 2247
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .line 889
    sget-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1331
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    .line 1332
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .line 1344
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public injectTime(JJI)V
    .registers 6
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 898
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    .line 899
    return-void
.end method

.method public isEnabled()Z
    .registers 3

    .line 1324
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1325
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 1326
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public onUpdateSatelliteBlacklist([I[I)V
    .registers 5
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 604
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;-><init>([I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I

    .line 2262
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportNiNotification: entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", niType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notifyFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaultResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requestorIdEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", textEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2276
    .local v0, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2277
    iput p2, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2278
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7f

    move v1, v3

    goto :goto_80

    :cond_7f
    move v1, v2

    :goto_80
    iput-boolean v1, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2279
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_88

    move v1, v3

    goto :goto_89

    :cond_88
    move v1, v2

    :goto_89
    iput-boolean v1, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2280
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_91

    move v2, v3

    nop

    :cond_91
    iput-boolean v2, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2282
    iput p4, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2283
    iput p5, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2284
    iput-object p6, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2285
    iput-object p7, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2286
    iput p8, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2287
    iput p9, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2289
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2290
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1485
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1487
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1489
    .local v2, "result":Z
    :try_start_5
    const-string v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1490
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v3

    move v2, v3

    goto :goto_48

    .line 1491
    :cond_13
    const-string v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1492
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1493
    const/4 v2, 0x1

    goto :goto_48

    .line 1494
    :cond_20
    const-string v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1495
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_48

    .line 1496
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    .line 1497
    const/4 v2, 0x1

    goto :goto_48

    .line 1500
    :cond_31
    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_4d

    .line 1502
    :cond_48
    :goto_48
    nop

    .line 1504
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    return v2

    .line 1504
    .end local v2    # "result":Z
    :catchall_4d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 1349
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1350
    return-void
.end method
