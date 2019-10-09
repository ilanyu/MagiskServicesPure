.class public Lcom/android/server/display/BrightnessTracker;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessTracker$Injector;,
        Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;,
        Lcom/android/server/display/BrightnessTracker$TrackerHandler;,
        Lcom/android/server/display/BrightnessTracker$Receiver;,
        Lcom/android/server/display/BrightnessTracker$SettingsObserver;,
        Lcom/android/server/display/BrightnessTracker$SensorListener;,
        Lcom/android/server/display/BrightnessTracker$LightData;
    }
.end annotation


# static fields
.field private static final AMBIENT_BRIGHTNESS_STATS_FILE:Ljava/lang/String; = "ambient_brightness_stats.xml"

.field private static final ATTR_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final ATTR_COLOR_TEMPERATURE:Ljava/lang/String; = "colorTemperature"

.field private static final ATTR_DEFAULT_CONFIG:Ljava/lang/String; = "defaultConfig"

.field private static final ATTR_LAST_NITS:Ljava/lang/String; = "lastNits"

.field private static final ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final ATTR_LUX_TIMESTAMPS:Ljava/lang/String; = "luxTimestamps"

.field private static final ATTR_MIUI_GRAY:Ljava/lang/String; = "miuiGrayFactor"

.field private static final ATTR_NIGHT_MODE:Ljava/lang/String; = "nightMode"

.field private static final ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_POWER_SAVE:Ljava/lang/String; = "powerSaveFactor"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_POINT:Ljava/lang/String; = "userPoint"

.field static final DEBUG:Z = false

.field private static final EVENTS_FILE:Ljava/lang/String; = "brightness_events.xml"

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final LUX_EVENT_HORIZON:J

.field private static final MAX_EVENTS:I = 0x64

.field private static final MAX_EVENT_AGE:J

.field private static final MSG_BACKGROUND_START:I = 0x0

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x1

.field private static final MSG_START_SENSOR_LISTENER:I = 0x3

.field private static final MSG_STOP_SENSOR_LISTENER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BrightnessTracker"

.field private static final TAG_EVENT:Ljava/lang/String; = "event"

.field private static final TAG_EVENTS:Ljava/lang/String; = "events"


# instance fields
.field private mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

.field private final mBgHandler:Landroid/os/Handler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDataCollectionLock:Ljava/lang/Object;

.field private mEvents:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEventsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDirty:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEventsLock"
    .end annotation
.end field

.field private final mEventsLock:Ljava/lang/Object;

.field private final mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

.field private mLastBatteryLevel:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDataCollectionLock"
    .end annotation
.end field

.field private mLastBrightness:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDataCollectionLock"
    .end annotation
.end field

.field private mLastSensorReadings:Ljava/util/Deque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDataCollectionLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/display/BrightnessTracker$LightData;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

.field private mSensorRegistered:Z

.field private mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

.field private mStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDataCollectionLock"
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private volatile mWriteBrightnessTrackerStateScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    .line 102
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    .line 127
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/display/BrightnessTracker$Injector;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 153
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 159
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 161
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 171
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 173
    if-eqz p2, :cond_3c

    .line 174
    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    goto :goto_43

    .line 176
    :cond_3c
    new-instance v0, Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessTracker$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 178
    :goto_43
    new-instance v0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$TrackerHandler;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 179
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 180
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/BrightnessTracker;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # F

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->backgroundStart(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/BrightnessTracker;FZFZZJF)V
    .registers 9
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z
    .param p3, "x3"    # F
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # J
    .param p8, "x7"    # F

    .line 85
    invoke-direct/range {p0 .. p8}, Lcom/android/server/display/BrightnessTracker;->handleBrightnessChanged(FZFZZJF)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/BrightnessTracker;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/BrightnessTracker;)Lcom/android/server/display/BrightnessTracker$Injector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/BrightnessTracker;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/BrightnessTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->batteryLevelChanged(II)V

    return-void
.end method

.method private backgroundStart(F)V
    .registers 6
    .param p1, "initialBrightness"    # F

    .line 196
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readEvents()V

    .line 197
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readAmbientBrightnessStats()V

    .line 199
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$SensorListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 201
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/BrightnessTracker$SettingsObserver;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    .line 202
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 203
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    new-instance v2, Lcom/android/server/display/BrightnessTracker$Receiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/BrightnessTracker$Receiver;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->scheduleIdleJob(Landroid/content/Context;)V

    .line 214
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_56
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 216
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_5d
    move-exception v2

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_5d

    throw v2
.end method

.method private batteryLevelChanged(II)V
    .registers 6
    .param p1, "level"    # I
    .param p2, "scale"    # I

    .line 793
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    :try_start_6
    iput v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 795
    monitor-exit v0

    .line 796
    return-void

    .line 795
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSensorRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method private handleBrightnessChanged(FZFZZJF)V
    .registers 32
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "powerBrightnessFactor"    # F
    .param p4, "isUserSetBrightness"    # Z
    .param p5, "isDefaultBrightnessConfig"    # Z
    .param p6, "timestamp"    # J
    .param p8, "grayBrightnessFactor"    # F

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 312
    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 313
    :try_start_7
    iget-boolean v0, v1, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    if-nez v0, :cond_d

    .line 315
    monitor-exit v3

    return-void

    .line 318
    :cond_d
    iget v0, v1, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 319
    .local v0, "previousBrightness":F
    iput v2, v1, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 321
    if-nez p2, :cond_15

    .line 325
    monitor-exit v3

    return-void

    .line 328
    :cond_15
    new-instance v5, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 329
    .local v5, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    invoke-virtual {v5, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 330
    move-wide/from16 v6, p6

    invoke-virtual {v5, v6, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_ed

    .line 331
    move/from16 v8, p3

    :try_start_24
    invoke-virtual {v5, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_eb

    .line 332
    move/from16 v9, p4

    :try_start_29
    invoke-virtual {v5, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_e9

    .line 333
    move/from16 v10, p5

    :try_start_2e
    invoke-virtual {v5, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 335
    iget-object v11, v1, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v11}, Ljava/util/Deque;->size()I

    move-result v11

    .line 336
    .local v11, "readingCount":I
    if-nez v11, :cond_3b

    .line 338
    monitor-exit v3

    return-void

    .line 341
    :cond_3b
    new-array v12, v11, [F

    .line 342
    .local v12, "luxValues":[F
    new-array v13, v11, [J

    .line 344
    .local v13, "luxTimestamps":[J
    const/4 v14, 0x0

    .line 347
    .local v14, "pos":I
    iget-object v15, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v15}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v15

    .line 348
    .local v15, "currentTimeMillis":J
    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v17

    .line 349
    .local v17, "elapsedTimeNanos":J
    iget-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/display/BrightnessTracker$LightData;

    move-object/from16 v20, v19

    .line 350
    .local v20, "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    move-object/from16 v21, v2

    move-object/from16 v2, v20

    iget v4, v2, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    .line 350
    .end local v20    # "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    .local v2, "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    aput v4, v12, v14

    .line 351
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    sub-long v6, v17, v6

    .line 352
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v6, v15, v6

    aput-wide v6, v13, v14

    .line 353
    add-int/lit8 v14, v14, 0x1

    .line 354
    .end local v2    # "reading":Lcom/android/server/display/BrightnessTracker$LightData;
    nop

    .line 349
    move-object/from16 v2, v21

    move-wide/from16 v6, p6

    goto :goto_52

    .line 355
    :cond_7e
    invoke-virtual {v5, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 356
    invoke-virtual {v5, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 358
    iget v2, v1, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v5, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 359
    invoke-virtual {v5, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_8c
    .catchall {:try_start_2e .. :try_end_8c} :catchall_e7

    .line 361
    move/from16 v2, p8

    :try_start_8e
    invoke-virtual {v5, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setGrayBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 362
    .end local v0    # "previousBrightness":F
    .end local v11    # "readingCount":I
    .end local v12    # "luxValues":[F
    .end local v13    # "luxTimestamps":[J
    .end local v14    # "pos":I
    .end local v15    # "currentTimeMillis":J
    .end local v17    # "elapsedTimeNanos":J
    monitor-exit v3
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_f8

    .line 365
    :try_start_92
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getFocusedStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 366
    .local v0, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_e4

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_e4

    .line 367
    iget v3, v0, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-virtual {v5, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 368
    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_ac} :catch_e5

    .line 379
    .end local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    nop

    .line 381
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "night_display_activated"

    const/4 v6, -0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v4, v7, v6}, Lcom/android/server/display/BrightnessTracker$Injector;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_bf

    move v0, v3

    goto :goto_c0

    :cond_bf
    move v0, v7

    :goto_c0
    invoke-virtual {v5, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 384
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v4, v1, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v11, "night_display_color_temperature"

    invoke-virtual {v0, v4, v11, v7, v6}, Lcom/android/server/display/BrightnessTracker$Injector;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 388
    invoke-virtual {v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v4

    .line 392
    .local v4, "event":Landroid/hardware/display/BrightnessChangeEvent;
    iget-object v6, v1, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 393
    :try_start_d8
    iput-boolean v3, v1, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 394
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 395
    monitor-exit v6

    .line 396
    return-void

    .line 395
    :catchall_e1
    move-exception v0

    monitor-exit v6
    :try_end_e3
    .catchall {:try_start_d8 .. :try_end_e3} :catchall_e1

    throw v0

    .line 374
    .end local v4    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    .restart local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    :cond_e4
    return-void

    .line 376
    .end local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    :catch_e5
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :catchall_e7
    move-exception v0

    goto :goto_f4

    :catchall_e9
    move-exception v0

    goto :goto_f2

    :catchall_eb
    move-exception v0

    goto :goto_f0

    :catchall_ed
    move-exception v0

    move/from16 v8, p3

    :goto_f0
    move/from16 v9, p4

    :goto_f2
    move/from16 v10, p5

    :goto_f4
    move/from16 v2, p8

    :goto_f6
    :try_start_f6
    monitor-exit v3
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f8

    throw v0

    :catchall_f8
    move-exception v0

    goto :goto_f6
.end method

.method public static synthetic lambda$dump$1(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 729
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic lambda$scheduleWriteBrightnessTrackerState$0(Lcom/android/server/display/BrightnessTracker;)V
    .registers 2

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 431
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeEvents()V

    .line 432
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeAmbientBrightnessStats()V

    .line 433
    return-void
.end method

.method private readAmbientBrightnessStats()V
    .registers 6

    .line 507
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;-><init>(Landroid/os/UserManager;Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 508
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 509
    .local v0, "readFrom":Landroid/util/AtomicFile;
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 510
    move-object v1, v2

    .line 512
    .local v1, "input":Ljava/io/FileInputStream;
    :try_start_1b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 513
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->readStats(Ljava/io/InputStream;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_2b
    .catchall {:try_start_1b .. :try_end_25} :catchall_29

    .line 518
    .end local v1    # "input":Ljava/io/FileInputStream;
    :goto_25
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 519
    goto :goto_3b

    .line 518
    .restart local v1    # "input":Ljava/io/FileInputStream;
    :catchall_29
    move-exception v2

    goto :goto_37

    .line 514
    :catch_2b
    move-exception v2

    .line 515
    .local v2, "e":Ljava/io/IOException;
    :try_start_2c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 516
    const-string v3, "BrightnessTracker"

    const-string v4, "Failed to read ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_29

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_25

    .line 518
    :goto_37
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 521
    .end local v1    # "input":Ljava/io/FileInputStream;
    :cond_3b
    :goto_3b
    return-void
.end method

.method private readEvents()V
    .registers 7

    .line 486
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 489
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 490
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 491
    .local v1, "readFrom":Landroid/util/AtomicFile;
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_3f

    if-eqz v2, :cond_3d

    .line 492
    const/4 v2, 0x0

    .line 494
    .local v2, "input":Ljava/io/FileInputStream;
    :try_start_1c
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 495
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_2a
    .catchall {:try_start_1c .. :try_end_24} :catchall_28

    .line 500
    :try_start_24
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3f

    .line 501
    :goto_27
    goto :goto_3d

    .line 500
    :catchall_28
    move-exception v3

    goto :goto_39

    .line 496
    :catch_2a
    move-exception v3

    .line 497
    .local v3, "e":Ljava/io/IOException;
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 498
    const-string v4, "BrightnessTracker"

    const-string v5, "Failed to read change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_28

    .line 500
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_35
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_27

    :goto_39
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 503
    .end local v1    # "readFrom":Landroid/util/AtomicFile;
    .end local v2    # "input":Ljava/io/FileInputStream;
    :cond_3d
    :goto_3d
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 789
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->add(IF)V

    .line 790
    return-void
.end method

.method private recordSensorEvent(Landroid/hardware/SensorEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 759
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    sub-long/2addr v0, v2

    .line 760
    .local v0, "horizon":J
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 764
    :try_start_c
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 765
    invoke-interface {v5}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_26

    .line 767
    monitor-exit v2

    return-void

    .line 769
    :cond_26
    const/4 v3, 0x0

    move-object v4, v3

    .line 770
    .local v4, "data":Lcom/android/server/display/BrightnessTracker$LightData;
    :goto_28
    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 771
    invoke-interface {v5}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_48

    .line 773
    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    move-object v4, v5

    goto :goto_28

    .line 777
    :cond_48
    if-eqz v4, :cond_4f

    .line 778
    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v5, v4}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 781
    :cond_4f
    new-instance v5, Lcom/android/server/display/BrightnessTracker$LightData;

    invoke-direct {v5, v3}, Lcom/android/server/display/BrightnessTracker$LightData;-><init>(Lcom/android/server/display/BrightnessTracker$1;)V

    move-object v3, v5

    .line 782
    .end local v4    # "data":Lcom/android/server/display/BrightnessTracker$LightData;
    .local v3, "data":Lcom/android/server/display/BrightnessTracker$LightData;
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, v3, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    .line 783
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    .line 784
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 785
    .end local v3    # "data":Lcom/android/server/display/BrightnessTracker$LightData;
    monitor-exit v2

    .line 786
    return-void

    .line 785
    :catchall_67
    move-exception v3

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_c .. :try_end_69} :catchall_67

    throw v3
.end method

.method private scheduleWriteBrightnessTrackerState()V
    .registers 3

    .line 428
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    if-nez v0, :cond_11

    .line 429
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;

    invoke-direct {v1, p0}, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 436
    :cond_11
    return-void
.end method

.method private startSensorListener()V
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-nez v0, :cond_5

    .line 401
    return-void

    .line 404
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 405
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 406
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 407
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->start()V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 409
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 410
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v3

    .line 409
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->registerSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/os/Handler;)V

    .line 412
    :cond_34
    return-void
.end method

.method private stopSensorListener()V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-nez v0, :cond_5

    .line 417
    return-void

    .line 420
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-eqz v0, :cond_1a

    .line 421
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->stop()V

    .line 422
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 425
    :cond_1a
    return-void
.end method

.method private writeAmbientBrightnessStats()V
    .registers 6

    .line 470
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 471
    .local v0, "writeTo":Landroid/util/AtomicFile;
    if-nez v0, :cond_b

    .line 472
    return-void

    .line 474
    :cond_b
    const/4 v1, 0x0

    .line 476
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 477
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->writeStats(Ljava/io/OutputStream;)V

    .line 478
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_1a

    .line 482
    goto :goto_25

    .line 479
    :catch_1a
    move-exception v2

    .line 480
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 481
    const-string v3, "BrightnessTracker"

    const-string v4, "Failed to write ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    .end local v2    # "e":Ljava/io/IOException;
    :goto_25
    return-void
.end method

.method private writeEvents()V
    .registers 7

    .line 439
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    if-nez v1, :cond_9

    .line 442
    monitor-exit v0

    return-void

    .line 445
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 446
    .local v1, "writeTo":Landroid/util/AtomicFile;
    if-nez v1, :cond_15

    .line 447
    monitor-exit v0

    return-void

    .line 449
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 450
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 451
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 453
    :cond_27
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_46

    goto :goto_44

    .line 455
    :cond_2a
    const/4 v2, 0x0

    .line 457
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 458
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 459
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 460
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_39
    .catchall {:try_start_2b .. :try_end_38} :catchall_46

    .line 464
    goto :goto_44

    .line 461
    :catch_39
    move-exception v3

    .line 462
    .local v3, "e":Ljava/io/IOException;
    :try_start_3a
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 463
    const-string v4, "BrightnessTracker"

    const-string v5, "Failed to write change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v1    # "writeTo":Landroid/util/AtomicFile;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_44
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_46

    throw v1
.end method


# virtual methods
.method adjustSensorListenerWithProximity(Z)V
    .registers 4
    .param p1, "positive"    # Z

    .line 88
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    const/4 v1, 0x2

    goto :goto_7

    :cond_6
    const/4 v1, 0x3

    :goto_7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 694
    const-string v0, "BrightnessTracker state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings time span "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 702
    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 703
    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    :cond_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_8 .. :try_end_9d} :catchall_205

    .line 706
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 707
    :try_start_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEventsDirty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEvents.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 710
    .local v0, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    const/4 v2, 0x0

    move v3, v2

    .line 710
    .local v3, "i":I
    :goto_da
    array-length v4, v0

    if-ge v3, v4, :cond_1d2

    .line 711
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    aget-object v7, v0, v3

    iget-wide v7, v7, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isUserSetBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", powerBrightnessFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isDefaultBrightnessConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 717
    const-string v4, " {"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    move v4, v2

    .line 718
    .local v4, "j":I
    :goto_18a
    aget-object v5, v0, v3

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v5, v5

    if-ge v4, v5, :cond_1c8

    .line 719
    if-eqz v4, :cond_198

    .line 720
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    :cond_198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v6, v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    add-int/lit8 v4, v4, 0x1

    goto :goto_18a

    .line 724
    .end local v4    # "j":I
    :cond_1c8
    const-string/jumbo v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_da

    .line 726
    .end local v0    # "events":[Landroid/hardware/display/BrightnessChangeEvent;
    .end local v3    # "i":I
    :cond_1d2
    monitor-exit v1
    :try_end_1d3
    .catchall {:try_start_a0 .. :try_end_1d3} :catchall_202

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWriteBrightnessTrackerStateScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;-><init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 730
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_201

    .line 731
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 732
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->dump(Ljava/io/PrintWriter;)V

    .line 734
    :cond_201
    return-void

    .line 726
    :catchall_202
    move-exception v0

    :try_start_203
    monitor-exit v1
    :try_end_204
    .catchall {:try_start_203 .. :try_end_204} :catchall_202

    throw v0

    .line 705
    :catchall_205
    move-exception v1

    :try_start_206
    monitor-exit v0
    :try_end_207
    .catchall {:try_start_206 .. :try_end_207} :catchall_205

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_12

    .line 742
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 743
    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->getUserStats(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 744
    .local v0, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    if-eqz v0, :cond_12

    .line 745
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 748
    .end local v0    # "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    :cond_12
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "includePackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 254
    .local v1, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_71

    .line 255
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/display/BrightnessTracker$Injector;->getProfileIds(Landroid/os/UserManager;I)[I

    move-result-object v0

    .line 256
    .local v0, "profiles":[I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v2, "toRedact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_1b
    array-length v5, v0

    const/4 v6, 0x1

    if-ge v4, v5, :cond_38

    .line 258
    aget v5, v0, v4

    .line 261
    .local v5, "profileId":I
    if-eqz p2, :cond_28

    if-eq v5, p1, :cond_26

    goto :goto_28

    :cond_26
    move v6, v3

    nop

    .line 262
    .local v6, "redact":Z
    :cond_28
    :goto_28
    aget v7, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .end local v5    # "profileId":I
    .end local v6    # "redact":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 264
    .end local v4    # "i":I
    :cond_38
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/BrightnessChangeEvent;>;"
    nop

    .local v3, "i":I
    :goto_3f
    array-length v5, v1

    if-ge v3, v5, :cond_6b

    .line 266
    aget-object v5, v1, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 267
    .local v5, "redact":Ljava/lang/Boolean;
    if-eqz v5, :cond_68

    .line 268
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5e

    .line 269
    aget-object v7, v1, v3

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 271
    :cond_5e
    new-instance v7, Landroid/hardware/display/BrightnessChangeEvent;

    aget-object v8, v1, v3

    invoke-direct {v7, v8, v6}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 273
    .local v7, "event":Landroid/hardware/display/BrightnessChangeEvent;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v5    # "redact":Ljava/lang/Boolean;
    .end local v7    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    :cond_68
    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 277
    .end local v3    # "i":I
    :cond_6b
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3

    .line 254
    .end local v0    # "profiles":[I
    .end local v1    # "events":[Landroid/hardware/display/BrightnessChangeEvent;
    .end local v2    # "toRedact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/BrightnessChangeEvent;>;"
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public notifyBrightnessChanged(FZFZZF)V
    .registers 19
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "powerBrightnessFactor"    # F
    .param p4, "isUserSetBrightness"    # Z
    .param p5, "isDefaultBrightnessConfig"    # Z
    .param p6, "grayBrightnessFactor"    # F

    move-object v0, p0

    .line 296
    iget-object v1, v0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 297
    const/4 v2, 0x0

    new-instance v11, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    iget-object v3, v0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 301
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v8

    move-object v3, v11

    move v4, p1

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;-><init>(FFZZJF)V

    .line 296
    const/4 v3, 0x1

    move v4, p2

    invoke-virtual {v1, v3, v4, v2, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 302
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 303
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .line 242
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 243
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 1

    .line 281
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    .line 282
    return-void
.end method

.method readEventsLocked(Ljava/io/InputStream;)V
    .registers 35
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEventsLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 588
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 589
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 592
    :goto_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v4, v2

    .line 592
    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_1d

    const/4 v2, 0x2

    if-eq v4, v2, :cond_1d

    .line 592
    .end local v4    # "type":I
    goto :goto_11

    .line 595
    .restart local v4    # "type":I
    :cond_1d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "tag":Ljava/lang/String;
    const-string v6, "events"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d4

    .line 601
    iget-object v6, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v6, v8

    .line 603
    .local v6, "timeCutOff":J
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 604
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 605
    .local v8, "outerDepth":I
    :goto_39
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v4, v9

    if-eq v9, v5, :cond_1d2

    const/4 v9, 0x3

    if-ne v4, v9, :cond_49

    .line 606
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_1d2

    .line 607
    :cond_49
    if-eq v4, v9, :cond_1c1

    const/4 v9, 0x4

    if-ne v4, v9, :cond_57

    .line 608
    nop

    .line 604
    move-object/from16 v30, v0

    move/from16 v19, v4

    move/from16 v23, v8

    goto/16 :goto_1c7

    .line 610
    :cond_57
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 611
    const-string v9, "event"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b6

    .line 612
    new-instance v9, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 614
    .local v9, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    const-string/jumbo v10, "nits"

    const/4 v11, 0x0

    invoke-interface {v0, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, "brightness":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v9, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 616
    const-string/jumbo v12, "timestamp"

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 617
    .local v12, "timestamp":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 618
    const-string/jumbo v13, "packageName"

    invoke-interface {v0, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 619
    const-string/jumbo v13, "user"

    invoke-interface {v0, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 620
    .local v13, "user":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v15, v1, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v14, v15, v5}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 621
    const-string v5, "batteryLevel"

    invoke-interface {v0, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "batteryLevel":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v9, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 623
    const-string/jumbo v14, "nightMode"

    invoke-interface {v0, v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 624
    .local v14, "nightMode":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v9, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 625
    const-string v15, "colorTemperature"

    .line 626
    invoke-interface {v0, v11, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 627
    .local v15, "colorTemperature":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 628
    const-string/jumbo v11, "lastNits"

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 628
    .end local v2    # "tag":Ljava/lang/String;
    .local v16, "tag":Ljava/lang/String;
    move-object v2, v11

    .line 629
    .local v2, "lastBrightness":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 631
    const-string/jumbo v11, "lux"

    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 632
    .end local v2    # "lastBrightness":Ljava/lang/String;
    .local v11, "luxValue":Ljava/lang/String;
    .local v17, "lastBrightness":Ljava/lang/String;
    const-string/jumbo v2, "luxTimestamps"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "luxTimestamp":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "luxValuesStrings":[Ljava/lang/String;
    move/from16 v19, v4

    const-string v4, ","

    .line 635
    .end local v4    # "type":I
    .local v19, "type":I
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "luxTimestampsStrings":[Ljava/lang/String;
    move-object/from16 v20, v2

    array-length v2, v3

    .line 636
    .end local v2    # "luxTimestamp":Ljava/lang/String;
    .local v20, "luxTimestamp":Ljava/lang/String;
    move-object/from16 v21, v5

    array-length v5, v4

    .line 636
    .end local v5    # "batteryLevel":Ljava/lang/String;
    .local v21, "batteryLevel":Ljava/lang/String;
    if-eq v2, v5, :cond_10f

    .line 637
    nop

    .line 604
    move-object/from16 v30, v0

    move/from16 v23, v8

    goto/16 :goto_1be

    .line 639
    :cond_10f
    array-length v2, v3

    new-array v2, v2, [F

    .line 640
    .local v2, "luxValues":[F
    array-length v5, v3

    new-array v5, v5, [J

    .line 641
    .local v5, "luxTimestamps":[J
    const/16 v18, 0x0

    .line 641
    .local v18, "i":I
    :goto_117
    move/from16 v22, v18

    .line 641
    .end local v18    # "i":I
    .local v22, "i":I
    move/from16 v23, v8

    array-length v8, v2

    .line 641
    .end local v8    # "outerDepth":I
    .local v23, "outerDepth":I
    move-object/from16 v24, v10

    move/from16 v10, v22

    if-ge v10, v8, :cond_139

    .line 642
    .end local v22    # "i":I
    .local v10, "i":I
    .local v24, "brightness":Ljava/lang/String;
    aget-object v8, v3, v10

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v2, v10

    .line 643
    aget-object v8, v4, v10

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    aput-wide v25, v5, v10

    .line 641
    add-int/lit8 v18, v10, 0x1

    .line 641
    .end local v10    # "i":I
    .restart local v18    # "i":I
    move/from16 v8, v23

    move-object/from16 v10, v24

    goto :goto_117

    .line 645
    .end local v18    # "i":I
    :cond_139
    invoke-virtual {v9, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 646
    invoke-virtual {v9, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 648
    const-string v8, "defaultConfig"

    const/4 v10, 0x0

    invoke-interface {v0, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 649
    .local v8, "defaultConfig":Ljava/lang/String;
    if-eqz v8, :cond_14f

    .line 650
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 652
    :cond_14f
    const-string/jumbo v10, "powerSaveFactor"

    move-object/from16 v27, v2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 652
    .end local v2    # "luxValues":[F
    .local v27, "luxValues":[F
    move-object v2, v10

    .line 653
    .local v2, "powerSave":Ljava/lang/String;
    if-eqz v2, :cond_164

    .line 654
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_169

    .line 656
    :cond_164
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 658
    :goto_169
    const-string/jumbo v10, "userPoint"

    move-object/from16 v28, v2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 658
    .end local v2    # "powerSave":Ljava/lang/String;
    .local v28, "powerSave":Ljava/lang/String;
    move-object v2, v10

    .line 659
    .local v2, "userPoint":Ljava/lang/String;
    if-eqz v2, :cond_17d

    .line 660
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 663
    :cond_17d
    const-string/jumbo v10, "miuiGrayFactor"

    move-object/from16 v29, v2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "miuiGray":Ljava/lang/String;
    .local v29, "userPoint":Ljava/lang/String;
    if-eqz v2, :cond_191

    .line 665
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setGrayBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_196

    .line 667
    :cond_191
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setGrayBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 671
    :goto_196
    invoke-virtual {v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v10

    .line 677
    .local v10, "event":Landroid/hardware/display/BrightnessChangeEvent;
    move-object/from16 v30, v0

    iget v0, v10, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 677
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v30, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v31, v2

    const/4 v2, -0x1

    .line 677
    .end local v2    # "miuiGray":Ljava/lang/String;
    .local v31, "miuiGray":Ljava/lang/String;
    if-eq v0, v2, :cond_1b5

    move-object/from16 v32, v3

    iget-wide v2, v10, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    .line 677
    .end local v3    # "luxValuesStrings":[Ljava/lang/String;
    .local v32, "luxValuesStrings":[Ljava/lang/String;
    cmp-long v0, v2, v6

    if-lez v0, :cond_1b5

    iget-object v0, v10, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v0, v0

    if-lez v0, :cond_1b5

    .line 679
    iget-object v0, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, v10}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 681
    .end local v4    # "luxTimestampsStrings":[Ljava/lang/String;
    .end local v5    # "luxTimestamps":[J
    .end local v8    # "defaultConfig":Ljava/lang/String;
    .end local v9    # "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .end local v10    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    .end local v11    # "luxValue":Ljava/lang/String;
    .end local v12    # "timestamp":Ljava/lang/String;
    .end local v13    # "user":Ljava/lang/String;
    .end local v14    # "nightMode":Ljava/lang/String;
    .end local v15    # "colorTemperature":Ljava/lang/String;
    .end local v17    # "lastBrightness":Ljava/lang/String;
    .end local v20    # "luxTimestamp":Ljava/lang/String;
    .end local v21    # "batteryLevel":Ljava/lang/String;
    .end local v24    # "brightness":Ljava/lang/String;
    .end local v27    # "luxValues":[F
    .end local v28    # "powerSave":Ljava/lang/String;
    .end local v29    # "userPoint":Ljava/lang/String;
    .end local v31    # "miuiGray":Ljava/lang/String;
    .end local v32    # "luxValuesStrings":[Ljava/lang/String;
    :cond_1b5
    goto :goto_1be

    .line 604
    .end local v16    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v23    # "outerDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "tag":Ljava/lang/String;
    .local v4, "type":I
    .local v8, "outerDepth":I
    :cond_1b6
    move-object/from16 v30, v0

    move-object/from16 v16, v2

    move/from16 v19, v4

    move/from16 v23, v8

    .line 604
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v8    # "outerDepth":I
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    .restart local v23    # "outerDepth":I
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1be
    move-object/from16 v2, v16

    goto :goto_1c7

    .line 604
    .end local v16    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v23    # "outerDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    .restart local v8    # "outerDepth":I
    :cond_1c1
    move-object/from16 v30, v0

    move/from16 v19, v4

    move/from16 v23, v8

    :goto_1c7
    move/from16 v4, v19

    move/from16 v8, v23

    move-object/from16 v0, v30

    move-object/from16 v3, p1

    const/4 v5, 0x1

    goto/16 :goto_39

    .line 690
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v6    # "timeCutOff":J
    .end local v8    # "outerDepth":I
    :cond_1d2
    nop

    .line 691
    return-void

    .line 597
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_1d4
    move-object/from16 v30, v0

    .line 597
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Events not found in brightness tracker file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1ed
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1ed} :catch_1ed
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_1ed} :catch_1ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_1ed} :catch_1ed
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1ed} :catch_1ed

    .line 683
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1ed
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v3, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 687
    const-string v2, "BrightnessTracker"

    const-string v3, "Failed to parse brightness event"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to parse file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public start(F)V
    .registers 5
    .param p1, "initialBrightness"    # F

    .line 191
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 192
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    return-void
.end method

.method stop()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 228
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->cancelIdleJob(Landroid/content/Context;)V

    .line 233
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_2e
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v1
.end method

.method writeEventsLocked(Ljava/io/OutputStream;)V
    .registers 15
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEventsLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 527
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 528
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 529
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 531
    const-string v1, "events"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 534
    .local v1, "toWrite":[Landroid/hardware/display/BrightnessChangeEvent;
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 538
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v4, v6

    .line 539
    .local v4, "timeCutOff":J
    const/4 v2, 0x0

    move v6, v2

    .line 539
    .local v6, "i":I
    :goto_39
    array-length v7, v1

    if-ge v6, v7, :cond_152

    .line 540
    iget-object v7, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v8, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    aget-object v9, v1, v6

    iget v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v7, v8, v9}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v7

    .line 541
    .local v7, "userSerialNo":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_14e

    aget-object v8, v1, v6

    iget-wide v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v8, v8, v4

    if-lez v8, :cond_14e

    .line 542
    iget-object v8, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    aget-object v9, v1, v6

    invoke-virtual {v8, v9}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 543
    const-string v8, "event"

    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    const-string/jumbo v8, "nits"

    aget-object v9, v1, v6

    iget v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    const-string/jumbo v8, "timestamp"

    aget-object v9, v1, v6

    iget-wide v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    const-string/jumbo v8, "packageName"

    aget-object v9, v1, v6

    iget-object v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    const-string/jumbo v8, "user"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 548
    const-string v8, "batteryLevel"

    aget-object v9, v1, v6

    iget v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    const-string/jumbo v8, "nightMode"

    aget-object v9, v1, v6

    iget-boolean v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    const-string v8, "colorTemperature"

    aget-object v9, v1, v6

    iget v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 552
    const-string/jumbo v8, "lastNits"

    aget-object v9, v1, v6

    iget v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 553
    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    .line 552
    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 554
    const-string v8, "defaultConfig"

    aget-object v9, v1, v6

    iget-boolean v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 555
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    .line 554
    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    const-string/jumbo v8, "powerSaveFactor"

    aget-object v9, v1, v6

    iget v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 557
    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    .line 556
    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    const-string/jumbo v8, "userPoint"

    aget-object v9, v1, v6

    iget-boolean v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 559
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    .line 558
    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    const-string/jumbo v8, "miuiGrayFactor"

    aget-object v9, v1, v6

    iget v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->grayBrightnessFactor:F

    .line 562
    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    .line 561
    invoke-interface {v0, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v8, "luxValues":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v9, "luxTimestamps":Ljava/lang/StringBuilder;
    move v10, v2

    .line 566
    .local v10, "j":I
    :goto_107
    aget-object v11, v1, v6

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v11, v11

    if-ge v10, v11, :cond_135

    .line 567
    if-lez v10, :cond_118

    .line 568
    const/16 v11, 0x2c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    :cond_118
    aget-object v11, v1, v6

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v11, v11, v10

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    aget-object v11, v1, v6

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v11, v11, v10

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    add-int/lit8 v10, v10, 0x1

    goto :goto_107

    .line 574
    .end local v10    # "j":I
    :cond_135
    const-string/jumbo v10, "lux"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    const-string/jumbo v10, "luxTimestamps"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    const-string v10, "event"

    invoke-interface {v0, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    .end local v7    # "userSerialNo":I
    .end local v8    # "luxValues":Ljava/lang/StringBuilder;
    .end local v9    # "luxTimestamps":Ljava/lang/StringBuilder;
    :cond_14e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_39

    .line 579
    .end local v6    # "i":I
    :cond_152
    const-string v2, "events"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 581
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 582
    return-void
.end method
