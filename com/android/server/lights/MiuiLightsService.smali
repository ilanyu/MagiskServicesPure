.class public Lcom/android/server/lights/MiuiLightsService;
.super Lcom/android/server/lights/LightsService;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;,
        Lcom/android/server/lights/MiuiLightsService$LightContentObserver;,
        Lcom/android/server/lights/MiuiLightsService$TimeTickReceiver;,
        Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;,
        Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;,
        Lcom/android/server/lights/MiuiLightsService$LightsThread;,
        Lcom/android/server/lights/MiuiLightsService$LightImpl;
    }
.end annotation


# static fields
.field private static final LED_END_WORKTIME_DEF:J = 0x4ef6d80L

.field private static final LED_START_WORKTIME_DEF:J = 0x1808580L

.field public static final LIGHT_ID_COLORFUL:I = 0x8

.field public static final LIGHT_ID_MUSIC:I = 0x9

.field private static final LIGHT_ON_MS:I = 0x1f4

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final STOP_FLASH_MSG:I = 0x1

.field private static sInstance:Lcom/android/server/lights/MiuiLightsService;


# instance fields
.field private dataCaptureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;",
            ">;"
        }
    .end annotation
.end field

.field private light_end_time:J

.field private light_start_time:J

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAudioManagerPlaybackCb:Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

.field private mContext:Landroid/content/Context;

.field private mDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsLedTurnOn:Z

.field private mIsWorkTime:Z

.field private mLedDataCaptureListener:Lcom/android/server/lights/LedDataCaptureListener;

.field private mLedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLightContentObserver:Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

.field private mLightHandler:Landroid/os/Handler;

.field private final mLightStyleLoader:Lcom/android/server/lights/LightStyleLoader;

.field private final mLock:Ljava/lang/Object;

.field private mMusicLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

.field private mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPlayingPid:I

.field private final mPreviousLights:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/lights/LightState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousLightsLimit:I

.field private mResolver:Landroid/content/ContentResolver;

.field private final mService:Landroid/os/IBinder;

.field private mSupportButtonLight:Z

.field private mSupportColorfulLed:Z

.field private mSupportLedLight:Z

.field private mSupportLedSchedule:Z

.field private mSupportTapFingerprint:Z

.field private mSupportVirtualLed:Z

.field private mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V

    .line 66
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/lights/MiuiLightsService;->mPreviousLightsLimit:I

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 83
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/lights/MiuiLightsService;->light_end_time:J

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/lights/MiuiLightsService;->light_start_time:J

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mIsWorkTime:Z

    .line 90
    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    iput-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 91
    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    const/16 v3, 0x9

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    iput-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mMusicLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 92
    iput-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    .line 414
    new-instance v1, Lcom/android/server/lights/MiuiLightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/MiuiLightsService$1;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;

    .line 436
    new-instance v1, Lcom/android/server/lights/MiuiLightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/MiuiLightsService$2;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mService:Landroid/os/IBinder;

    .line 545
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I

    .line 546
    new-instance v1, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;-><init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$1;)V

    iput-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mAudioManagerPlaybackCb:Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;

    .line 97
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    .line 98
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    .line 99
    new-instance v1, Lcom/android/server/lights/LightStyleLoader;

    invoke-direct {v1, p1}, Lcom/android/server/lights/LightStyleLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLightStyleLoader:Lcom/android/server/lights/LightStyleLoader;

    .line 100
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v3, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v3, v1, v4

    .line 101
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v3, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v3, v1, v4

    .line 102
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v3, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v3, v1, v4

    .line 103
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v3, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v3, v1, v4

    .line 104
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 105
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "*lights*"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MiuiLightsHandlerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "miuiLightsHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mLightHandler:Landroid/os/Handler;

    .line 110
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mPreviousLights:Ljava/util/LinkedList;

    .line 111
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnNotificationLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnMusicLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isLightEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isMusicLightPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isSceneUncomfort()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->turnoffBatteryLight()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->recoveryBatteryLight()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->doCancelColorfulLightLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/lights/MiuiLightsService;IZII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/lights/MiuiLightsService;->reportLedEventLocked(IZII)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightsThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$LightsThread;)Lcom/android/server/lights/MiuiLightsService$LightsThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # Lcom/android/server/lights/MiuiLightsService$LightsThread;

    .line 55
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/LightState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # Lcom/android/server/lights/LightState;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/lights/MiuiLightsService;->addToLightCollectionLocked(Lcom/android/server/lights/LightState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/lights/MiuiLightsService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/lights/MiuiLightsService;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mIsLedTurnOn:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/lights/MiuiLightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/server/lights/MiuiLightsService;->mIsLedTurnOn:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/lights/MiuiLightsService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/lights/MiuiLightsService;->checkCallerVerify(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/LightStyleLoader;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLightStyleLoader:Lcom/android/server/lights/LightStyleLoader;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->releaseVisualizer()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/lights/MiuiLightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/lights/MiuiLightsService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/pm/PackageManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->getDataCaptureListener()Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mMusicLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/lights/MiuiLightsService;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->updateWorkState()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->registerAudioPlaybackCallback()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->unregisterAudioPlaybackCallback()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->updateLightState()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/lights/MiuiLightsService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-wide v0, p0, Lcom/android/server/lights/MiuiLightsService;->light_start_time:J

    return-wide v0
.end method

.method static synthetic access$5202(Lcom/android/server/lights/MiuiLightsService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # J

    .line 55
    iput-wide p1, p0, Lcom/android/server/lights/MiuiLightsService;->light_start_time:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/server/lights/MiuiLightsService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-wide v0, p0, Lcom/android/server/lights/MiuiLightsService;->light_end_time:J

    return-wide v0
.end method

.method static synthetic access$5302(Lcom/android/server/lights/MiuiLightsService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p1, "x1"    # J

    .line 55
    iput-wide p1, p0, Lcom/android/server/lights/MiuiLightsService;->light_end_time:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/lights/MiuiLightsService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isDisableButtonLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnButtonLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/lights/MiuiLightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnBatteryLight()Z

    move-result v0

    return v0
.end method

.method private addToLightCollectionLocked(Lcom/android/server/lights/LightState;)V
    .registers 4
    .param p1, "lightState"    # Lcom/android/server/lights/LightState;

    .line 899
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mPreviousLights:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_f

    .line 900
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mPreviousLights:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 902
    :cond_f
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mPreviousLights:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 903
    return-void
.end method

.method static brightnessToColor(III)I
    .registers 7
    .param p0, "id"    # I
    .param p1, "brightness"    # I
    .param p2, "lastColor"    # I

    .line 906
    move v0, p1

    .line 907
    .local v0, "color":I
    if-nez p0, :cond_30

    sget v1, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_30

    sget v1, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    const/16 v2, 0xc

    if-gt v1, v2, :cond_30

    .line 909
    if-gez p1, :cond_2d

    .line 910
    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid backlight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return p2

    .line 913
    :cond_2d
    and-int/lit16 v0, p1, 0xfff

    goto :goto_3b

    .line 915
    :cond_30
    and-int/lit16 v0, v0, 0xff

    .line 916
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 918
    :goto_3b
    return v0
.end method

.method private checkCallerVerify(Ljava/lang/String;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 669
    if-eqz p1, :cond_6b

    .line 670
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportColorfulLed:Z

    if-eqz v0, :cond_63

    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 672
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 673
    .local v1, "appid":I
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callingPackage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_62

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_62

    const/16 v2, 0x3f5

    if-eq v1, v2, :cond_62

    if-eqz v0, :cond_62

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_47

    goto :goto_62

    .line 677
    :cond_47
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed call for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 679
    :cond_62
    :goto_62
    return-void

    .line 670
    .end local v0    # "uid":I
    .end local v1    # "appid":I
    :cond_63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current devices do`t support ColorfulLed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callingPackage is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doCancelColorfulLightLocked()V
    .registers 9

    .line 536
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;

    if-eqz v0, :cond_1b

    .line 537
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightsThread;->cancel()V

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;

    .line 539
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastLightStyle:I

    .line 540
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    # invokes: Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$3000(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V

    .line 542
    :cond_1b
    return-void
.end method

.method private getDataCaptureListener()Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;
    .registers 2

    .line 604
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    if-nez v0, :cond_b

    .line 605
    new-instance v0, Lcom/android/server/lights/MiuiLightsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/lights/MiuiLightsService$3;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    .line 624
    :cond_b
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/lights/MiuiLightsService;
    .registers 1

    .line 429
    sget-object v0, Lcom/android/server/lights/MiuiLightsService;->sInstance:Lcom/android/server/lights/MiuiLightsService;

    return-object v0
.end method

.method private isDisableButtonLight()Z
    .registers 6

    .line 886
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    const/4 v1, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    .line 887
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "screen_buttons_state"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "single_key_use_enable"

    .line 889
    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1e

    goto :goto_20

    .line 887
    :cond_1e
    move v1, v3

    goto :goto_21

    .line 889
    :cond_20
    :goto_20
    nop

    .line 887
    :goto_21
    return v1

    .line 893
    :cond_22
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "screen_buttons_state"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v3

    :goto_2f
    return v1
.end method

.method private isLightEnable()Z
    .registers 2

    .line 856
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnLight()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mIsWorkTime:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isMusicLightPlaying()Z
    .registers 3

    .line 647
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isSceneUncomfort()Z
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private isTurnOnBatteryLight()Z
    .registers 6

    .line 870
    const-string v0, "default_battery_led_on"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 871
    .local v0, "defaultOn":Z
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "battery_light_turn_on"

    .line 872
    const/4 v4, -0x2

    .line 871
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private isTurnOnButtonLight()Z
    .registers 5

    .line 865
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_buttons_turn_on"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method private isTurnOnLight()Z
    .registers 5

    .line 860
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "light_turn_on"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method private isTurnOnMusicLight()Z
    .registers 5

    .line 881
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportColorfulLed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "music_light_turn_on"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private isTurnOnNotificationLight()Z
    .registers 5

    .line 876
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "notification_light_turn_on"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method private recoveryBatteryLight()V
    .registers 8

    .line 661
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 662
    .local v0, "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$3800(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v1

    if-eqz v1, :cond_37

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$3900(Lcom/android/server/lights/MiuiLightsService$LightImpl;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isSceneUncomfort()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isLightEnable()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 663
    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$3800(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v2

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$4000(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v3

    .line 664
    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$4100(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v4

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$4200(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v5

    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$4300(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v6

    .line 663
    move-object v1, v0

    # invokes: Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$3000(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V

    .line 666
    :cond_37
    return-void
.end method

.method private registerAudioPlaybackCallback()V
    .registers 4

    .line 628
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportColorfulLed:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnLight()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnMusicLight()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 629
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mAudioManagerPlaybackCb:Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 631
    :cond_19
    return-void
.end method

.method private releaseVisualizer()V
    .registers 2

    .line 640
    invoke-static {}, Lcom/android/server/lights/VisualizerHolder;->getInstance()Lcom/android/server/lights/VisualizerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/VisualizerHolder;->release()V

    .line 641
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mMusicLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->turnOff()V

    .line 642
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->recoveryBatteryLight()V

    .line 643
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I

    .line 644
    return-void
.end method

.method private reportLedEventLocked(IZII)V
    .registers 10
    .param p1, "mId"    # I
    .param p2, "isTurnOn"    # Z
    .param p3, "onMS"    # I
    .param p4, "offMs"    # I

    .line 391
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 393
    .local v0, "info":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string/jumbo v1, "isTurnOn"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string/jumbo v1, "onMs"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string/jumbo v1, "offMs"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    if-nez v1, :cond_46

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    .line 401
    :cond_46
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_6b

    .line 403
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    const-string/jumbo v2, "led"

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V

    .line 404
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLedEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6b} :catch_6c

    .line 409
    :cond_6b
    goto :goto_70

    .line 407
    :catch_6c
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_70
    return-void
.end method

.method private turnoffBatteryLight()V
    .registers 8

    .line 654
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 655
    .local v0, "batteryLight":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    # getter for: Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$3800(Lcom/android/server/lights/MiuiLightsService$LightImpl;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 656
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    # invokes: Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$3000(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V

    .line 658
    :cond_16
    return-void
.end method

.method private unregisterAudioPlaybackCallback()V
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mAudioManagerPlaybackCb:Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;

    if-eqz v0, :cond_b

    .line 635
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mAudioManagerPlaybackCb:Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 637
    :cond_b
    return-void
.end method

.method private updateLightState()V
    .registers 4

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v1}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 844
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 845
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 846
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 847
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 848
    return-void
.end method

.method private updateWorkState()V
    .registers 8

    .line 704
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedSchedule:Z

    if-nez v0, :cond_5

    return-void

    .line 705
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 706
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x36ee80

    mul-long/2addr v1, v3

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0xea60

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 707
    .local v1, "now_stamp":J
    iget-wide v3, p0, Lcom/android/server/lights/MiuiLightsService;->light_end_time:J

    iget-wide v5, p0, Lcom/android/server/lights/MiuiLightsService;->light_start_time:J

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-ltz v3, :cond_38

    .line 708
    iget-wide v5, p0, Lcom/android/server/lights/MiuiLightsService;->light_end_time:J

    cmp-long v3, v1, v5

    if-gtz v3, :cond_35

    iget-wide v5, p0, Lcom/android/server/lights/MiuiLightsService;->light_start_time:J

    cmp-long v3, v1, v5

    if-gez v3, :cond_47

    .line 709
    :cond_35
    iput-boolean v4, p0, Lcom/android/server/lights/MiuiLightsService;->mIsWorkTime:Z

    .line 710
    return-void

    .line 713
    :cond_38
    iget-wide v5, p0, Lcom/android/server/lights/MiuiLightsService;->light_end_time:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_47

    iget-wide v5, p0, Lcom/android/server/lights/MiuiLightsService;->light_start_time:J

    cmp-long v3, v1, v5

    if-gez v3, :cond_47

    .line 714
    iput-boolean v4, p0, Lcom/android/server/lights/MiuiLightsService;->mIsWorkTime:Z

    .line 715
    return-void

    .line 718
    :cond_47
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/lights/MiuiLightsService;->mIsWorkTime:Z

    .line 719
    return-void
.end method


# virtual methods
.method public addDataCaptureListener(Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;)V
    .registers 3
    .param p1, "onDataCaptureListener"    # Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;

    .line 922
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    .line 925
    :cond_b
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 926
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    :cond_18
    return-void
.end method

.method public dumpLight(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 961
    const-string v0, "MiuiLightsService Status:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ZenMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSupportColorFulLight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportColorfulLed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Led Working Time: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService;->mIsWorkTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/lights/MiuiLightsService;->light_start_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/lights/MiuiLightsService;->light_end_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSupportTapFingerprint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSupportButtonLight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSupportLedLight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isLightEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isLightEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isTurnOnLight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isTurnOnButtonLight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnButtonLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isTurnOnBatteryLight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnBatteryLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isTurnOnNotificationLight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnNotificationLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isTurnOnMusicLight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->isTurnOnMusicLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_135
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v2, v2

    if-ge v1, v2, :cond_159

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_135

    .line 978
    .end local v1    # "i":I
    :cond_159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService;->mMusicLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    const-string v1, "  Previous Lights:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mPreviousLights:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_198
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightState;

    .line 982
    .local v2, "lightstate":Lcom/android/server/lights/LightState;
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v2}, Lcom/android/server/lights/LightState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    .end local v2    # "lightstate":Lcom/android/server/lights/LightState;
    goto :goto_198

    .line 985
    :cond_1b1
    monitor-exit v0

    .line 986
    return-void

    .line 985
    :catchall_1b3
    move-exception v1

    monitor-exit v0
    :try_end_1b5
    .catchall {:try_start_8 .. :try_end_1b5} :catchall_1b3

    throw v1
.end method

.method public getBinderService()Landroid/os/IBinder;
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method public notifyFrequencyCapture(Landroid/content/Context;I[F)V
    .registers 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "magnitude_max"    # I
    .param p3, "frequencies"    # [F

    .line 947
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 948
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;

    .line 949
    .local v1, "onDataCaptureListener":Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;->onFrequencyCapture(Landroid/content/Context;I[F)V

    .line 950
    .end local v1    # "onDataCaptureListener":Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;
    goto :goto_e

    .line 952
    :cond_1e
    return-void
.end method

.method public notifySetLightCallback(Landroid/content/Context;IIIIII)V
    .registers 19
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "lightId"    # I
    .param p3, "color"    # I
    .param p4, "mode"    # I
    .param p5, "onMS"    # I
    .param p6, "offMS"    # I
    .param p7, "brightnessMode"    # I

    move-object v0, p0

    .line 939
    iget-object v1, v0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 940
    iget-object v1, v0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;

    .line 941
    .local v2, "onDataCaptureListener":Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;
    move-object v3, v2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;->onSetLightCallback(Landroid/content/Context;IIIIII)V

    .line 942
    .end local v2    # "onDataCaptureListener":Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;
    goto :goto_f

    .line 944
    :cond_2a
    return-void
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 121
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_f0

    .line 122
    const-string/jumbo v0, "support_led_light"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    .line 123
    const-string/jumbo v0, "support_button_light"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    .line 124
    const-string/jumbo v0, "support_tap_fingerprint_sensor_to_home"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportTapFingerprint:Z

    .line 125
    const-string/jumbo v0, "support_led_colorful"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportColorfulLed:Z

    .line 126
    const-string/jumbo v0, "support_led_schedule"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedSchedule:Z

    .line 127
    const-string/jumbo v0, "support_virtual_led"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportVirtualLed:Z

    .line 128
    new-instance v0, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLightContentObserver:Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

    .line 129
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLightContentObserver:Lcom/android/server/lights/MiuiLightsService$LightContentObserver;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightContentObserver;->observe()V

    .line 130
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/lights/MiuiLightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 131
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_buttons_state"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 133
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportButtonLight:Z

    if-eqz v0, :cond_69

    .line 134
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 136
    :cond_69
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedLight:Z

    if-eqz v0, :cond_77

    .line 137
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    .line 139
    :cond_77
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$1;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/lights/MiuiLightsService;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 143
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->registerAudioPlaybackCallback()V

    .line 144
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportLedSchedule:Z

    if-eqz v0, :cond_da

    .line 145
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "light_turn_on_endTime"

    const-wide/32 v4, 0x4ef6d80

    invoke-static {v0, v1, v4, v5, v3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/lights/MiuiLightsService;->light_end_time:J

    .line 147
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "light_turn_on_startTime"

    const-wide/32 v4, 0x1808580

    invoke-static {v0, v1, v4, v5, v3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/lights/MiuiLightsService;->light_start_time:J

    .line 149
    invoke-direct {p0}, Lcom/android/server/lights/MiuiLightsService;->updateWorkState()V

    .line 150
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$TimeTickReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/MiuiLightsService$TimeTickReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$1;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/lights/MiuiLightsService;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    :cond_da
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService;->mSupportVirtualLed:Z

    if-eqz v0, :cond_f0

    .line 154
    new-instance v0, Lcom/android/server/lights/LedDataCaptureListener;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/lights/LedDataCaptureListener;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLedDataCaptureListener:Lcom/android/server/lights/LedDataCaptureListener;

    .line 155
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLedDataCaptureListener:Lcom/android/server/lights/LedDataCaptureListener;

    invoke-virtual {p0, v0}, Lcom/android/server/lights/MiuiLightsService;->addDataCaptureListener(Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;)V

    .line 159
    :cond_f0
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 115
    invoke-super {p0}, Lcom/android/server/lights/LightsService;->onStart()V

    .line 116
    sput-object p0, Lcom/android/server/lights/MiuiLightsService;->sInstance:Lcom/android/server/lights/MiuiLightsService;

    .line 117
    return-void
.end method

.method public removeDataCaptureListener(Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;)Z
    .registers 3
    .param p1, "onDataCaptureListener"    # Lcom/android/server/lights/MiuiLightsService$DataCaptureListener;

    .line 931
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 932
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->dataCaptureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 934
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
