.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$ShellCmd;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;,
        Lcom/android/server/notification/NotificationManagerService$TrimCache;,
        Lcom/android/server/notification/NotificationManagerService$FlagChecker;,
        Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEBUG_INTERRUPTIVENESS:Z

.field static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 3.0f

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final DELAY_FOR_ASSISTANT_TIME:J = 0x64L

.field static final ENABLE_BLOCKED_TOASTS:Z = false

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field static final FINISH_TOKEN_TIMEOUT:I = 0x2af8

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_DURATION_REACHED:I = 0x2

.field static final MESSAGE_FINISH_TOKEN_TIMEOUT:I = 0x7

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x5

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x6

.field static final MESSAGE_ON_PACKAGE_CHANGED:I = 0x8

.field private static final MESSAGE_RANKING_SORT:I = 0x3e9

.field private static final MESSAGE_RECONSIDER_RANKING:I = 0x3e8

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x4

.field private static final MIN_PACKAGE_OVERRATE_LOG_INTERVAL:J = 0x1388L

.field private static final MY_PID:I

.field private static final MY_UID:I

.field private static final REQUEST_CODE_TIMEOUT:I = 0x1

.field private static final SCHEME_TIMEOUT:Ljava/lang/String; = "timeout"

.field static final SHORT_DELAY:I = 0x7d0

.field static final SNOOZE_UNTIL_UNSPECIFIED:J = -0x1L

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11

.field private static final WHITELIST_TOKEN:Landroid/os/IBinder;

.field private static mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field static final mNotificationLock:Ljava/lang/Object;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowedManagedServicePackages:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field private mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field final mAutobundledSummaries:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallNotificationToken:Landroid/os/Binder;

.field private mCallState:I

.field private mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mDisableNotificationEffects:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

.field private mEffectsSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mEnqueuedNotifications:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field protected mInCall:Z

.field private mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field private mInCallNotificationUri:Landroid/net/Uri;

.field private mInCallNotificationVolume:F

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mIsTelevision:Z

.field private mLastOverRateLogTime:J

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mMaxPackageEnqueueRate:F

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field private final mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerClient:Landroid/content/pm/PackageManager;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field final mRecentApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/NotifyingApp;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private final mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

.field private mScreenOn:Z

.field private final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

.field private mSoundNotificationKey:Ljava/lang/String;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field mVibrator:Landroid/os/Vibrator;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field protected mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 244
    const-string v0, "NotificationService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 245
    const-string v0, "debug.child_notifs"

    .line 246
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 248
    const-string v0, "debug.notification.interruptiveness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    .line 274
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_58

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    .line 309
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    .line 366
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 404
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 405
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 406
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    return-void

    nop

    :array_58
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1252
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 328
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 332
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 347
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 354
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 355
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 369
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 373
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 376
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 377
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRecentApps:Landroid/util/ArrayMap;

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 398
    new-instance v1, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 409
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 616
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    .line 674
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 968
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 980
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 1000
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 1023
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1119
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1978
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 3983
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 1253
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    sput-object v0, Landroid/app/Notification;->processWhitelistToken:Landroid/os/IBinder;

    .line 1254
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .line 242
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$1600()I
    .registers 1

    .line 242
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$1700()I
    .registers 1

    .line 242
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$1800()Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .registers 1

    .line 242
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 242
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 242
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/notification/NotificationManagerService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # F

    .line 242
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 242
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/app/NotificationChannelGroup;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 242
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/app/NotificationChannel;
    .param p4, "x4"    # Z

    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # I

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # I

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->exitIdle()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/function/Predicate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Landroid/service/notification/Adjustment;

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 7
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 242
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .line 242
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)Landroid/os/Binder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Binder;

    .line 242
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/notification/NotificationManagerService;ZI[Ljava/lang/String;[I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # [I

    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;

    .line 242
    invoke-direct/range {p0 .. p7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;

    .line 242
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .registers 14
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "x8"    # Z
    .param p9, "x9"    # I
    .param p10, "x10"    # Z
    .param p11, "x11"    # I
    .param p12, "x12"    # Ljava/lang/String;
    .param p13, "x13"    # Z

    .line 242
    invoke-direct/range {p0 .. p13}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return v0
.end method

.method static synthetic access$8202(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 242
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic access$8300(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 242
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "overrideGroupKey"    # Ljava/lang/String;

    .line 3634
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3635
    .local v0, "signals":Landroid/os/Bundle;
    const-string/jumbo v1, "key_group_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3636
    new-instance v7, Landroid/service/notification/Adjustment;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3637
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 3638
    .local v1, "adjustment":Landroid/service/notification/Adjustment;
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 3639
    return-void
.end method

.method private addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hint"    # I

    .line 1816
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_12

    .line 1817
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1820
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1821
    .local v0, "hintListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1822
    return-void
.end method

.method private addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .line 1802
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    .line 1803
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 1806
    :cond_8
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_10

    .line 1807
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 1810
    :cond_10
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_18

    .line 1811
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 1813
    :cond_18
    return-void
.end method

.method private applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "adjustment"    # Landroid/service/notification/Adjustment;

    .line 3598
    if-nez p1, :cond_3

    .line 3599
    return-void

    .line 3601
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3602
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3603
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 3605
    :cond_14
    return-void
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5328
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 5329
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5330
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 5331
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 5330
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    goto :goto_1f

    .line 5333
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 5335
    :goto_1f
    return-void
.end method

.method private calculateHints()I
    .registers 6

    .line 1825
    const/4 v0, 0x0

    .line 1826
    .local v0, "hints":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 1827
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1828
    .local v2, "hint":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1830
    .local v3, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1831
    or-int/2addr v0, v2

    .line 1826
    .end local v2    # "hint":I
    .end local v3    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1835
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method private calculateSuppressedEffects()J
    .registers 6

    .line 1839
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 1840
    .local v0, "hints":I
    const-wide/16 v1, 0x0

    .line 1842
    .local v1, "suppressedEffects":J
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_d

    .line 1843
    const-wide/16 v3, 0x3

    or-long/2addr v1, v3

    .line 1846
    :cond_d
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_14

    .line 1847
    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    .line 1850
    :cond_14
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1b

    .line 1851
    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    .line 1854
    :cond_1b
    return-wide v1
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 6281
    packed-switch p0, :pswitch_data_1e

    .line 6285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6284
    :pswitch_15
    const-string v0, "CALL_STATE_OFFHOOK"

    return-object v0

    .line 6283
    :pswitch_18
    const-string v0, "CALL_STATE_RINGING"

    return-object v0

    .line 6282
    :pswitch_1b
    const-string v0, "CALL_STATE_IDLE"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .registers 29
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "nullPkgIndicatesUserSwitch"    # Z
    .param p6, "channelId"    # Ljava/lang/String;
    .param p7, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "includeCurrentProfiles"    # Z
    .param p9, "userId"    # I
    .param p10, "sendDelete"    # Z
    .param p11, "reason"    # I
    .param p12, "listenerName"    # Ljava/lang/String;
    .param p13, "wasPosted"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            "ZIZI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v11, p9

    .line 5897
    const/4 v0, 0x0

    .line 5898
    .local v0, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v12, v0

    .end local v0    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v1, "i":I
    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :goto_11
    move v6, v1

    .end local v1    # "i":I
    .local v6, "i":I
    if-ltz v6, :cond_8f

    .line 5899
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 5900
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p8, :cond_28

    .line 5901
    invoke-direct {v7, v13, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 5902
    nop

    .line 5898
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_24
    move-object/from16 v5, p7

    goto/16 :goto_8c

    .line 5904
    .restart local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_28
    invoke-direct {v7, v13, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 5905
    goto :goto_24

    .line 5908
    :cond_2f
    if-eqz p5, :cond_3b

    if-nez v9, :cond_3b

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    .line 5909
    goto :goto_24

    .line 5911
    :cond_3b
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v0

    move-object/from16 v5, p7

    invoke-interface {v5, v0}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 5912
    goto :goto_8c

    .line 5914
    :cond_48
    if-eqz v9, :cond_57

    iget-object v0, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 5915
    goto :goto_8c

    .line 5917
    :cond_57
    if-eqz v10, :cond_68

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 5918
    goto :goto_8c

    .line 5920
    :cond_68
    if-nez v12, :cond_70

    .line 5921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 5923
    :cond_70
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5924
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5925
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5926
    move-object v0, v7

    move-object v1, v13

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p13

    move-object/from16 v5, p12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 5898
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_8c
    add-int/lit8 v1, v6, -0x1

    .end local v6    # "i":I
    .restart local v1    # "i":I
    goto :goto_11

    .line 5928
    .end local v1    # "i":I
    :cond_8f
    if-eqz v12, :cond_b4

    .line 5929
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 5930
    .local v13, "M":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_96
    move v6, v0

    .end local v0    # "i":I
    .restart local v6    # "i":I
    if-ge v6, v13, :cond_b1

    .line 5931
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    const/4 v5, 0x0

    move-object v0, v7

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p12

    move v14, v6

    move-object/from16 v6, p7

    .end local v6    # "i":I
    .local v14, "i":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 5930
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "i":I
    .restart local v0    # "i":I
    goto :goto_96

    .line 5934
    .end local v0    # "i":I
    :cond_b1
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 5936
    .end local v13    # "M":I
    :cond_b4
    return-void
.end method

.method private cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 30
    .param p2, "parentNotification"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "listenerName"    # Ljava/lang/String;
    .param p6, "sendDelete"    # Z
    .param p7, "wasPosted"    # Z
    .param p8, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            "II",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            ")V"
        }
    .end annotation

    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p1

    .line 6022
    move-object/from16 v1, p8

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6023
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v14

    .line 6024
    .local v14, "userId":I
    const/16 v15, 0xc

    .line 6025
    .local v15, "reason":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_18
    move v13, v4

    .end local v4    # "i":I
    .local v13, "i":I
    if-ltz v13, :cond_a4

    .line 6026
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 6027
    .local v12, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v11, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6028
    .local v11, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-nez v4, :cond_9a

    .line 6029
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 6030
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_9a

    if-eqz v1, :cond_5b

    .line 6031
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_5b

    .line 6025
    .end local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    :cond_57
    move-object/from16 v4, p0

    move v1, v13

    goto :goto_9d

    .line 6032
    .restart local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    :cond_5b
    :goto_5b
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    .line 6033
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    .line 6032
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v3

    move v9, v14

    move-object/from16 v18, v11

    move/from16 v11, v16

    .end local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .local v18, "childSbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v19, v12

    move/from16 v12, v17

    .end local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    .local v19, "childR":Lcom/android/server/notification/NotificationRecord;
    move v1, v13

    move-object/from16 v13, p5

    .end local v13    # "i":I
    .local v1, "i":I
    invoke-static/range {v4 .. v13}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 6034
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6035
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v11, v19

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .end local v19    # "childR":Lcom/android/server/notification/NotificationRecord;
    .local v11, "childR":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6036
    const/16 v8, 0xc

    move-object v5, v4

    move-object v6, v11

    move/from16 v7, p6

    move/from16 v9, p7

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .end local v11    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v18    # "childSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_9d

    .line 6025
    .end local v1    # "i":I
    .restart local v13    # "i":I
    :cond_9a
    move-object/from16 v4, p0

    move v1, v13

    .end local v13    # "i":I
    .restart local v1    # "i":I
    :goto_9d
    add-int/lit8 v1, v1, -0x1

    move v4, v1

    move-object/from16 v1, p8

    goto/16 :goto_18

    .line 6039
    .end local v1    # "i":I
    :cond_a4
    move-object/from16 v4, p0

    return-void
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 20
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "sendDelete"    # Z
    .param p6, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    move-object v9, p0

    .line 6000
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 6001
    .local v10, "n":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_c

    .line 6002
    return-void

    .line 6005
    :cond_c
    move-object v11, p1

    iget-object v0, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 6007
    .local v12, "pkg":Ljava/lang/String;
    if-nez v12, :cond_34

    .line 6008
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_33

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package for group summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6009
    :cond_33
    return-void

    .line 6012
    :cond_34
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object v0, v9

    move-object v2, v11

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 6014
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 6016
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .registers 26
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I
    .param p4, "rank"    # I
    .param p5, "count"    # I
    .param p6, "wasPosted"    # Z
    .param p7, "listenerName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p3

    .line 5525
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 5528
    .local v12, "canceledKey":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5530
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1c

    .line 5531
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    .line 5535
    :cond_1c
    if-eqz p2, :cond_4d

    .line 5536
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4d

    .line 5538
    :try_start_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_2f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_26 .. :try_end_2f} :catch_30

    .line 5543
    goto :goto_4d

    .line 5539
    :catch_30
    move-exception v0

    .line 5542
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5548
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_4d
    :goto_4d
    if-eqz p6, :cond_b9

    .line 5550
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 5551
    const/16 v0, 0x12

    if-eq v11, v0, :cond_60

    .line 5552
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 5554
    :cond_60
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v4

    invoke-virtual {v0, v2, v11, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 5555
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$13;

    invoke-direct {v4, v1, v2}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5564
    :cond_73
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_98

    .line 5565
    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 5566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 5568
    .local v5, "identity":J
    :try_start_82
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 5569
    .local v0, "player":Landroid/media/IRingtonePlayer;
    if-eqz v0, :cond_94

    .line 5570
    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8d} :catch_93
    .catchall {:try_start_82 .. :try_end_8d} :catchall_8e

    .end local v0    # "player":Landroid/media/IRingtonePlayer;
    goto :goto_94

    .line 5574
    :catchall_8e
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 5572
    :catch_93
    move-exception v0

    .line 5574
    .end local v5    # "identity":J
    :cond_94
    :goto_94
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5575
    nop

    .line 5579
    :cond_98
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 5580
    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 5581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5583
    .local v4, "identity":J
    :try_start_a6
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_af

    .line 5586
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5587
    goto :goto_b4

    .line 5586
    :catchall_af
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 5591
    .end local v4    # "identity":J
    :cond_b4
    :goto_b4
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5596
    :cond_b9
    packed-switch v11, :pswitch_data_180

    packed-switch v11, :pswitch_data_188

    goto :goto_cc

    .line 5605
    :pswitch_c0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_cc

    .line 5601
    :pswitch_c6
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 5602
    nop

    .line 5609
    :goto_cc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 5610
    .local v0, "groupKey":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 5611
    .local v13, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v13, :cond_ea

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 5612
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5614
    :cond_ea
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/util/ArrayMap;

    .line 5615
    .local v10, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_11e

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 5616
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5620
    :cond_11e
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 5622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5623
    .local v8, "now":J
    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x80

    .line 5624
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v5, 0x5

    .line 5625
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 5626
    invoke-virtual {v4, v11}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 5627
    .local v7, "logMaker":Landroid/metrics/LogMaker;
    move/from16 v6, p4

    if-eq v6, v3, :cond_159

    move/from16 v5, p5

    if-eq v5, v3, :cond_15b

    .line 5628
    const/16 v3, 0x31e

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x573

    .line 5629
    move-object v14, v0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0    # "groupKey":Ljava/lang/String;
    .local v14, "groupKey":Ljava/lang/String;
    invoke-virtual {v3, v4, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    goto :goto_15c

    .line 5631
    .end local v14    # "groupKey":Ljava/lang/String;
    .restart local v0    # "groupKey":Ljava/lang/String;
    :cond_159
    move/from16 v5, p5

    :cond_15b
    move-object v14, v0

    .end local v0    # "groupKey":Ljava/lang/String;
    .restart local v14    # "groupKey":Ljava/lang/String;
    :goto_15c
    invoke-static {v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 5632
    nop

    .line 5633
    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v0

    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v15

    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v16

    .line 5632
    move-object v3, v12

    move v4, v11

    move v5, v0

    move v6, v15

    move-object v0, v7

    move/from16 v7, v16

    .end local v7    # "logMaker":Landroid/metrics/LogMaker;
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    move-wide v15, v8

    move/from16 v8, p4

    .end local v8    # "now":J
    .local v15, "now":J
    move/from16 v9, p5

    move-object/from16 v17, v10

    move-object/from16 v10, p7

    .end local v10    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v17, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIIIIILjava/lang/String;)V

    .line 5635
    return-void

    :pswitch_data_180
    .packed-switch 0x2
        :pswitch_c6
        :pswitch_c6
    .end packed-switch

    :pswitch_data_188
    .packed-switch 0x8
        :pswitch_c0
        :pswitch_c0
        :pswitch_c6
        :pswitch_c6
    .end packed-switch
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .registers 14
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I
    .param p4, "wasPosted"    # Z
    .param p5, "listenerName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5519
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 5520
    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 6264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6266
    .local v0, "uid":I
    :try_start_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    .line 6267
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 6266
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 6268
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_44

    .line 6271
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6277
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 6278
    return-void

    .line 6272
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " gave package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " which is owned by uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6269
    :cond_44
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_5b} :catch_5b

    .line 6275
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_5b
    move-exception v1

    .line 6276
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkCallerIsSystem()V
    .registers 4

    .line 6229
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6230
    return-void

    .line 6232
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 6236
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6237
    return-void

    .line 6239
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 6240
    return-void
.end method

.method private checkCallerIsSystemOrShell()V
    .registers 3

    .line 6222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 6223
    return-void

    .line 6225
    :cond_9
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 6226
    return-void
.end method

.method private checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 25
    .param p1, "userId"    # I
    .param p2, "callingUid"    # I
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p6, "isAutogroup"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p5

    .line 4206
    iget-object v0, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4207
    .local v4, "pkg":Ljava/lang/String;
    nop

    .line 4208
    move/from16 v5, p2

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_22

    const-string v0, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v7

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v6

    :goto_23
    move v8, v0

    .line 4209
    .local v8, "isSystemNotification":Z
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v9

    .line 4211
    .local v9, "isNotificationFromListener":Z
    sget-object v10, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4215
    if-nez v8, :cond_102

    if-nez v9, :cond_102

    .line 4216
    :try_start_31
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v11, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_62

    invoke-direct {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->isCallerInstantApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_62

    .line 4221
    :cond_46
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instant app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot create notifications"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4226
    :cond_62
    :goto_62
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v11, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_cb

    .line 4227
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v0

    if-nez v0, :cond_cb

    if-nez p6, :cond_cb

    .line 4230
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result v0

    .line 4231
    .local v0, "appEnqueueRate":F
    iget v12, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v12, v0, v12

    if-lez v12, :cond_cb

    .line 4232
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 4233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 4234
    .local v12, "now":J
    iget-wide v14, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x1388

    cmp-long v6, v14, v16

    if-lez v6, :cond_c9

    .line 4235
    const-string v6, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package enqueue rate is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ". Shedding "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4236
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ". package="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4235
    invoke-static {v6, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    iput-wide v12, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 4239
    :cond_c9
    monitor-exit v10
    :try_end_ca
    .catchall {:try_start_31 .. :try_end_ca} :catchall_fc

    return v7

    .line 4244
    .end local v0    # "appEnqueueRate":F
    .end local v12    # "now":J
    :cond_cb
    move/from16 v12, p3

    move-object/from16 v13, p4

    :try_start_cf
    invoke-virtual {v1, v4, v2, v12, v13}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 4245
    .local v0, "count":I
    const/16 v14, 0x32

    if-lt v0, v14, :cond_106

    .line 4246
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 4247
    const-string v6, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package has already posted or enqueued "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " notifications.  Not showing more.  package="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    monitor-exit v10

    return v7

    .line 4265
    .end local v0    # "count":I
    :catchall_fc
    move-exception v0

    move/from16 v12, p3

    move-object/from16 v13, p4

    goto :goto_158

    .line 4254
    :cond_102
    move/from16 v12, p3

    move-object/from16 v13, p4

    :cond_106
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v2, v4, v14}, Lcom/android/server/notification/SnoozeHelper;->isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 4255
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v6, 0x6

    .line 4256
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v6, 0x33f

    .line 4257
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 4255
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 4258
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_142

    .line 4259
    const-string v0, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignored enqueue for snoozed notification "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    :cond_142
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->update(ILcom/android/server/notification/NotificationRecord;)V

    .line 4262
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4263
    monitor-exit v10

    return v7

    .line 4265
    :cond_14c
    monitor-exit v10
    :try_end_14d
    .catchall {:try_start_cf .. :try_end_14d} :catchall_157

    .line 4268
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 4269
    return v7

    .line 4272
    :cond_156
    return v6

    .line 4265
    :catchall_157
    move-exception v0

    :goto_158
    :try_start_158
    monitor-exit v10
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_157

    throw v0
.end method

.method static clamp(III)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 5472
    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method private clearAutogroupSummaryLocked(ILjava/lang/String;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 3644
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 3645
    .local v0, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2e

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 3647
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    .line 3648
    .local v1, "removed":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_2e

    .line 3649
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 3650
    .local v8, "wasPosted":Z
    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 3653
    .end local v1    # "removed":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "wasPosted":Z
    :cond_2e
    return-void
.end method

.method private clearLightsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 965
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 966
    return-void
.end method

.method private clearSoundLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 938
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 940
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 941
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_19

    .line 942
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_18
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    goto :goto_19

    .line 946
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 944
    :catch_18
    move-exception v2

    .line 946
    :cond_19
    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 947
    nop

    .line 948
    return-void
.end method

.method private clearVibrateLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 953
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 955
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 958
    nop

    .line 959
    return-void

    .line 957
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    .registers 32
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "triggeringKey"    # Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 3663
    const/4 v1, 0x0

    .line 3664
    .local v1, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3665
    :try_start_8
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_15d

    move-object/from16 v10, p3

    :try_start_c
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_15b

    .line 3666
    .local v0, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_1b

    .line 3669
    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    return-void

    .line 3717
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_16
    move-exception v0

    move/from16 v11, p1

    goto/16 :goto_164

    .line 3671
    .restart local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_1b
    :try_start_1b
    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3672
    .local v3, "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_15b

    move v11, v4

    .line 3673
    .end local p1    # "userId":I
    .local v11, "userId":I
    :try_start_26
    iget-object v4, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_157

    .line 3674
    .local v4, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_3a

    .line 3675
    :try_start_34
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_166

    move-object v4, v5

    .line 3677
    :cond_3a
    :try_start_3a
    iget-object v5, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3678
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12a

    .line 3680
    nop

    .line 3681
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.appInfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 3683
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3684
    .local v6, "extras":Landroid/os/Bundle;
    const-string v7, "android.appInfo"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3685
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    .line 3686
    .local v7, "channelId":Ljava/lang/String;
    new-instance v12, Landroid/app/Notification$Builder;

    .line 3687
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3688
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 3689
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v14, 0x2

    .line 3690
    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const-string/jumbo v14, "ranker_group"

    .line 3691
    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/16 v14, 0x400

    .line 3692
    invoke-virtual {v12, v14, v13}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v12

    const/16 v14, 0x200

    .line 3693
    invoke-virtual {v12, v14, v13}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 3694
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->color:I

    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 3695
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 3696
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 3697
    .local v12, "summaryNotification":Landroid/app/Notification;
    iget-object v13, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v13, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3698
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13
    :try_end_bf
    .catchall {:try_start_3a .. :try_end_bf} :catchall_157

    move-object/from16 v25, v13

    .line 3699
    .local v25, "appIntent":Landroid/content/Intent;
    if-eqz v25, :cond_d9

    .line 3700
    nop

    .line 3701
    :try_start_c4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v19

    .line 3700
    move-object/from16 v16, v25

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    iput-object v13, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
    :try_end_d9
    .catchall {:try_start_c4 .. :try_end_d9} :catchall_166

    .line 3703
    :cond_d9
    :try_start_d9
    new-instance v26, Landroid/service/notification/StatusBarNotification;

    .line 3704
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3705
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7fffffff

    const-string/jumbo v17, "ranker_group"

    .line 3707
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v18

    .line 3708
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v19

    .line 3709
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v21

    const-string/jumbo v22, "ranker_group"

    .line 3710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v13, v26

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v24}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    move-object/from16 v13, v26

    .line 3711
    .local v13, "summarySbn":Landroid/service/notification/StatusBarNotification;
    new-instance v14, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v15
    :try_end_10b
    .catchall {:try_start_d9 .. :try_end_10b} :catchall_157

    .line 3712
    move-object/from16 v27, v1

    :try_start_10d
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    .line 3712
    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v27, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {v14, v15, v13, v1}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V
    :try_end_114
    .catchall {:try_start_10d .. :try_end_114} :catchall_126

    move-object v1, v14

    .line 3713
    .end local v27    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    nop

    .line 3714
    :try_start_116
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getIsAppImportanceLocked()Z

    move-result v14

    .line 3713
    invoke-virtual {v1, v14}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 3715
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v9, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_124
    .catchall {:try_start_116 .. :try_end_124} :catchall_166

    .line 3717
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "channelId":Ljava/lang/String;
    .end local v12    # "summaryNotification":Landroid/app/Notification;
    .end local v13    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .end local v25    # "appIntent":Landroid/content/Intent;
    move-object v12, v1

    goto :goto_12e

    .line 3717
    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v27    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_126
    move-exception v0

    move-object/from16 v1, v27

    goto :goto_164

    .line 3717
    .end local v27    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_12a
    move-object/from16 v27, v1

    move-object/from16 v12, v27

    .line 3717
    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v12, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :goto_12e
    :try_start_12e
    monitor-exit v2
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_154

    .line 3718
    if-eqz v12, :cond_153

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    iget-object v0, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3719
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v0, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 3718
    move-object v1, v8

    move v2, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 3720
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-direct {v1, v8, v11, v12}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3722
    :cond_153
    return-void

    .line 3717
    :catchall_154
    move-exception v0

    move-object v1, v12

    goto :goto_164

    .line 3717
    .end local v12    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_157
    move-exception v0

    move-object/from16 v27, v1

    goto :goto_164

    .line 3717
    .end local v11    # "userId":I
    .restart local p1    # "userId":I
    :catchall_15b
    move-exception v0

    goto :goto_160

    :catchall_15d
    move-exception v0

    move-object/from16 v10, p3

    .line 3717
    .end local p1    # "userId":I
    .restart local v11    # "userId":I
    :goto_160
    move-object/from16 v27, v1

    move/from16 v11, p1

    :goto_164
    :try_start_164
    monitor-exit v2
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_166

    throw v0

    :catchall_166
    move-exception v0

    goto :goto_164
.end method

.method private createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromApp"    # Z
    .param p5, "fromListener"    # Z

    .line 1732
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1736
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/RankingHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 1737
    .local v0, "preUpdate":Landroid/app/NotificationChannelGroup;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/RankingHelper;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V

    .line 1739
    if-nez p4, :cond_1a

    .line 1740
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V

    .line 1742
    :cond_1a
    if-nez p5, :cond_2a

    .line 1743
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1744
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    .line 1743
    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 1747
    :cond_2a
    return-void
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 3725
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_7

    .line 3726
    const-string v0, "booleanState"

    return-object v0

    .line 3728
    :cond_7
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 3729
    const-string/jumbo v0, "listenerHints"

    return-object v0

    .line 3731
    :cond_11
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3732
    const-string v0, "callState"

    return-object v0

    .line 3734
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private doChannelWarningToast(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "toastText"    # Ljava/lang/CharSequence;

    .line 4176
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 4177
    .local v0, "defaultWarningEnabled":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_channel_warnings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    move v1, v2

    .line 4179
    .local v1, "warningEnabled":Z
    :goto_17
    if-eqz v1, :cond_2a

    .line 4180
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 4182
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4184
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_2a
    return-void
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 3738
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3740
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Notification Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3741
    const-string v1, "bans"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/RankingHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3742
    const-string/jumbo v1, "ranking"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/RankingHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3743
    const-string/jumbo v1, "stats"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3744
    const-string v1, "channels"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/RankingHelper;->dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 3747
    goto :goto_40

    .line 3745
    :catch_3c
    move-exception v1

    .line 3746
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3748
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3749
    return-void
.end method

.method private dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 3824
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3826
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3827
    .local v1, "N":I
    if-lez v1, :cond_3b

    .line 3828
    const-string v2, "  Notification List:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3829
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_36

    .line 3830
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 3831
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_28

    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_33

    .line 3832
    .restart local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_28
    const-string v4, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 3829
    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3834
    .end local v2    # "i":I
    :cond_36
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3836
    .end local v1    # "N":I
    :cond_3b
    monitor-exit v0

    .line 3837
    return-void

    .line 3836
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    move-object/from16 v1, p0

    .line 3752
    move-object/from16 v2, p2

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    .line 3753
    .local v10, "proto":Landroid/util/proto/ProtoOutputStream;
    sget-object v11, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3754
    :try_start_f
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3755
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    move v13, v4

    .end local v4    # "i":I
    .local v13, "i":I
    if-ge v13, v0, :cond_3f

    .line 3756
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v14, v4

    .line 3757
    .local v14, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_2f

    iget-object v4, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_2f

    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_3c

    .line 3758
    .restart local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_2f
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x1

    move-object v4, v14

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 3755
    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_3c
    add-int/lit8 v4, v13, 0x1

    .end local v13    # "i":I
    .restart local v4    # "i":I
    goto :goto_16

    .line 3761
    .end local v4    # "i":I
    :cond_3f
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    .line 3762
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_47
    move v13, v4

    .end local v4    # "i":I
    .restart local v13    # "i":I
    if-ge v13, v0, :cond_70

    .line 3763
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v14, v4

    .line 3764
    .restart local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_60

    iget-object v4, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_60

    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_6d

    .line 3765
    .restart local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_60
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x0

    move-object v4, v14

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 3762
    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_6d
    add-int/lit8 v4, v13, 0x1

    .end local v13    # "i":I
    .restart local v4    # "i":I
    goto :goto_47

    .line 3768
    .end local v4    # "i":I
    :cond_70
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 3769
    .local v13, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move v0, v4

    .line 3770
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7d
    move v14, v4

    .end local v4    # "i":I
    .local v14, "i":I
    if-ge v14, v0, :cond_a4

    .line 3771
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v15, v4

    .line 3772
    .local v15, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_94

    iget-object v4, v15, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_94

    .end local v15    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_a1

    .line 3773
    .restart local v15    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_94
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x2

    move-object v4, v15

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 3770
    .end local v15    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_a1
    add-int/lit8 v4, v14, 0x1

    .end local v14    # "i":I
    .restart local v4    # "i":I
    goto :goto_7d

    .line 3777
    .end local v4    # "i":I
    :cond_a4
    const-wide v4, 0x10b00000002L

    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 3778
    .local v4, "zenLog":J
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v10}, Lcom/android/server/notification/ZenModeHelper;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 3779
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 3780
    .local v7, "suppressor":Landroid/content/ComponentName;
    const-wide v8, 0x20b00000004L

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3781
    .end local v7    # "suppressor":Landroid/content/ComponentName;
    goto :goto_b8

    .line 3782
    :cond_cd
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3784
    const-wide v6, 0x10b00000003L

    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 3785
    .local v6, "listenersToken":J
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v8, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3786
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3788
    const-wide v8, 0x10500000004L

    iget v14, v1, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {v10, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3790
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_ec
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_142

    .line 3791
    const-wide v14, 0x20b00000005L

    invoke-virtual {v10, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 3794
    .local v14, "effectsToken":J
    move-object/from16 v16, v13

    const-wide v12, 0x10500000001L

    .end local v13    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local v16, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 3795
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 3794
    invoke-virtual {v10, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3796
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 3797
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 3798
    .local v9, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_116
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_134

    .line 3799
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 3800
    .local v13, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    move-wide/from16 v17, v4

    const-wide v3, 0x20b00000002L

    .end local v4    # "zenLog":J
    .local v17, "zenLog":J
    const/4 v5, 0x0

    invoke-virtual {v13, v10, v3, v4, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/ManagedServices;)V

    .line 3798
    .end local v13    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v17

    move-object/from16 v3, p1

    goto :goto_116

    .line 3803
    .end local v12    # "j":I
    .end local v17    # "zenLog":J
    .restart local v4    # "zenLog":J
    :cond_134
    move-wide/from16 v17, v4

    .end local v4    # "zenLog":J
    .restart local v17    # "zenLog":J
    invoke-virtual {v10, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3790
    .end local v9    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    .end local v14    # "effectsToken":J
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v13, v16

    move-wide/from16 v4, v17

    move-object/from16 v3, p1

    goto :goto_ec

    .line 3806
    .end local v8    # "i":I
    .end local v16    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v17    # "zenLog":J
    .restart local v4    # "zenLog":J
    .local v13, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_142
    move-wide/from16 v17, v4

    move-object/from16 v16, v13

    .end local v4    # "zenLog":J
    .end local v13    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v16    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v17    # "zenLog":J
    const-wide v3, 0x10b00000006L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3808
    .local v3, "assistantsToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3809
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3811
    const-wide v8, 0x10b00000007L

    invoke-virtual {v10, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 3812
    .local v8, "conditionsToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3813
    invoke-virtual {v10, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3815
    const-wide v12, 0x10b00000008L

    invoke-virtual {v10, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 3816
    .local v12, "rankingToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/RankingHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3817
    invoke-virtual {v10, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3818
    .end local v0    # "N":I
    .end local v3    # "assistantsToken":J
    .end local v6    # "listenersToken":J
    .end local v8    # "conditionsToken":J
    .end local v12    # "rankingToken":J
    .end local v16    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v17    # "zenLog":J
    monitor-exit v11
    :try_end_17a
    .catchall {:try_start_f .. :try_end_17a} :catchall_17e

    .line 3820
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3821
    return-void

    .line 3818
    :catchall_17e
    move-exception v0

    :try_start_17f
    monitor-exit v11
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v0
.end method

.method private exitIdle()V
    .registers 3

    .line 1666
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_c

    .line 1667
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string/jumbo v1, "notification interaction"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 1670
    :cond_c
    goto :goto_e

    .line 1669
    :catch_d
    move-exception v0

    .line 1671
    :goto_e
    return-void
.end method

.method private findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "groupKey"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 6087
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6088
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6089
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_34

    .line 6090
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 6091
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6092
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 6093
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6089
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 6096
    .end local v2    # "i":I
    :cond_34
    return-object v0
.end method

.method private findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 6105
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_a

    .line 6106
    return-object v1

    .line 6108
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_14

    .line 6109
    return-object v1

    .line 6111
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 6
    .param p2, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 6144
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6145
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_21

    .line 6146
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6147
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    return-object v2

    .line 6145
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6150
    .end local v1    # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 10
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 6130
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6131
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_37

    .line 6132
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 6133
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v2, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p4, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6134
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 6135
    return-object v2

    .line 6131
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6138
    .end local v1    # "i":I
    :cond_37
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5339
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method private getGroupHelper()Lcom/android/server/notification/GroupHelper;
    .registers 3

    .line 1589
    new-instance v0, Lcom/android/server/notification/GroupHelper;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-direct {v0, v1}, Lcom/android/server/notification/GroupHelper;-><init>(Lcom/android/server/notification/GroupHelper$Callback;)V

    return-object v0
.end method

.method public static getHandler()Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .registers 1

    .line 7232
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 10
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .line 1239
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1240
    .local v0, "ar":[I
    if-nez v0, :cond_7

    .line 1241
    return-object p3

    .line 1243
    :cond_7
    array-length v1, v0

    if-le v1, p2, :cond_c

    move v1, p2

    goto :goto_d

    :cond_c
    array-length v1, v0

    .line 1244
    .local v1, "len":I
    :goto_d
    new-array v2, v1, [J

    .line 1245
    .local v2, "out":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_1a

    .line 1246
    aget v4, v0, v3

    int-to-long v4, v4

    aput-wide v4, v2, v3

    .line 1245
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1248
    .end local v3    # "i":I
    :cond_1a
    return-object v2
.end method

.method private getRealUserId(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 1970
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    move v0, p1

    :goto_6
    return v0
.end method

.method private getSuppressors()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_30

    .line 1771
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1773
    .local v2, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1774
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    .end local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_1b

    .line 1770
    .end local v2    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1778
    .end local v1    # "i":I
    :cond_30
    return-object v0
.end method

.method private grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sourceUid"    # I
    .param p4, "targetPkg"    # Ljava/lang/String;
    .param p5, "targetUserId"    # I

    .line 5715
    if-eqz p2, :cond_35

    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_35

    .line 5717
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5719
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 5720
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 5722
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p2, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 5719
    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v9, p5

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_29} :catch_2f
    .catchall {:try_start_13 .. :try_end_29} :catchall_2a

    goto :goto_30

    .line 5727
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5724
    :catch_2f
    move-exception v2

    .line 5727
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5728
    nop

    .line 5729
    return-void

    .line 5715
    .end local v0    # "ident":J
    :cond_35
    :goto_35
    return-void
.end method

.method private handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5160
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5162
    :try_start_29
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v1

    .line 5163
    .local v1, "index":I
    if-ltz v1, :cond_36

    .line 5164
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    .line 5166
    .end local v1    # "index":I
    :cond_36
    monitor-exit v0

    .line 5167
    return-void

    .line 5166
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 22
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 4748
    iget-object v10, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4749
    .local v10, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 4750
    .local v11, "n":Landroid/app/Notification;
    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4753
    iget v0, v11, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 4756
    :cond_1e
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    .line 4757
    .local v12, "group":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v13

    .line 4759
    .local v13, "isSummary":Z
    const/4 v0, 0x0

    if-eqz v9, :cond_30

    iget-object v1, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_31

    :cond_30
    move-object v1, v0

    :goto_31
    move-object v14, v1

    .line 4760
    .local v14, "oldN":Landroid/app/Notification;
    if-eqz v9, :cond_3b

    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_3b
    move-object v15, v0

    .line 4761
    .local v15, "oldGroup":Ljava/lang/String;
    if-eqz v9, :cond_46

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    move/from16 v16, v0

    .line 4763
    .local v16, "oldIsSummary":Z
    if-eqz v16, :cond_80

    .line 4764
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 4765
    .local v0, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    if-eq v0, v9, :cond_80

    .line 4767
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_5e

    :cond_5c
    const-string v1, "<null>"

    .line 4768
    .local v1, "removedKey":Ljava/lang/String;
    :goto_5e
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", removed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4772
    .end local v0    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v1    # "removedKey":Ljava/lang/String;
    :cond_80
    if-eqz v13, :cond_87

    .line 4773
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4780
    :cond_87
    if-eqz v16, :cond_9d

    if-eqz v13, :cond_91

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 4781
    :cond_91
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v9

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 4784
    :cond_9d
    return-void
.end method

.method private handleKillTokenTimeout(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5179
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kill Token Timeout token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5180
    :cond_1a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5181
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->finishTokenLocked(Landroid/os/IBinder;)V

    .line 5182
    monitor-exit v0

    .line 5183
    return-void

    .line 5182
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw v1
.end method

.method private handleListenerHintsChanged(I)V
    .registers 4
    .param p1, "hints"    # I

    .line 5362
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5363
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 5364
    monitor-exit v0

    .line 5365
    return-void

    .line 5364
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .registers 4
    .param p1, "interruptionFilter"    # I

    .line 5368
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 5370
    monitor-exit v0

    .line 5371
    return-void

    .line 5370
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private handleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "removingPackage"    # Z
    .param p2, "changeUserId"    # I
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I

    .line 5375
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 5376
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 5377
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 5378
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)V

    .line 5379
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 5380
    return-void
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .registers 15
    .param p1, "message"    # Landroid/os/Message;

    .line 5234
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/notification/RankingReconsideration;

    if-nez v0, :cond_7

    return-void

    .line 5235
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/RankingReconsideration;

    .line 5236
    .local v0, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v0}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 5238
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5239
    :try_start_11
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 5240
    .local v2, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_21

    .line 5241
    monitor-exit v1

    return-void

    .line 5243
    :cond_21
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v3

    .line 5244
    .local v3, "indexBefore":I
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 5245
    .local v4, "interceptBefore":Z
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v5

    .line 5246
    .local v5, "contactAffinityBefore":F
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v6

    .line 5247
    .local v6, "visibilityBefore":I
    invoke-virtual {v0, v2}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5248
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5249
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 5250
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v7

    .line 5251
    .local v7, "indexAfter":I
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v8

    .line 5252
    .local v8, "interceptAfter":Z
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v9

    .line 5253
    .local v9, "contactAffinityAfter":F
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v10

    .line 5254
    .local v10, "visibilityAfter":I
    if-ne v3, v7, :cond_57

    if-ne v4, v8, :cond_57

    if-eq v6, v10, :cond_55

    goto :goto_57

    :cond_55
    const/4 v11, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    const/4 v11, 0x1

    .line 5256
    .local v11, "changed":Z
    :goto_58
    if-eqz v4, :cond_6b

    if-nez v8, :cond_6b

    .line 5257
    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_6b

    .line 5260
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getStatusBarCheckedImportance()Z

    move-result v12

    if-eqz v12, :cond_6b

    .line 5261
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5265
    .end local v2    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "indexBefore":I
    .end local v4    # "interceptBefore":Z
    .end local v5    # "contactAffinityBefore":F
    .end local v6    # "visibilityBefore":I
    .end local v7    # "indexAfter":I
    .end local v8    # "interceptAfter":Z
    .end local v9    # "contactAffinityAfter":F
    .end local v10    # "visibilityAfter":I
    :cond_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_11 .. :try_end_6c} :catchall_75

    move v1, v11

    .line 5266
    .end local v11    # "changed":Z
    .local v1, "changed":Z
    if-eqz v1, :cond_74

    .line 5267
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 5269
    :cond_74
    return-void

    .line 5265
    .end local v1    # "changed":Z
    :catchall_75
    move-exception v2

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v2
.end method

.method private handleSendRankingUpdate()V
    .registers 4

    .line 5343
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5344
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 5345
    monitor-exit v0

    .line 5346
    return-void

    .line 5345
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 3657
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 3658
    .local v0, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method private isCallerInstantApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 6244
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 6245
    return v1

    .line 6248
    :cond_8
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 6251
    :try_start_11
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 6252
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 6251
    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6253
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_22

    .line 6256
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    return v1

    .line 6254
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_39} :catch_39

    .line 6257
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_39
    move-exception v0

    .line 6258
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 5045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5047
    .local v0, "token":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_2b

    .line 5049
    .local v2, "currentUser":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5050
    nop

    .line 5049
    nop

    .line 5051
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 5052
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    if-eq v3, v2, :cond_29

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 5053
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_29

    :cond_27
    const/4 v3, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v3, 0x1

    .line 5051
    :goto_2a
    return v3

    .line 5049
    .end local v2    # "currentUser":I
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 6381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6382
    .local v0, "identity":J
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 6384
    .local v2, "userId":I
    :try_start_8
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_e} :catch_14
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 6391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6384
    return v3

    .line 6391
    :catchall_12
    move-exception v3

    goto :goto_23

    .line 6387
    :catch_14
    move-exception v3

    .line 6389
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    .line 6391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6389
    return v4

    .line 6385
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1a
    move-exception v3

    .line 6386
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1b
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Could not talk to package manager service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_12

    .line 6391
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isPackageSuspendedLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 4469
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4470
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 4472
    .local v1, "callingUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6373
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 6374
    const/4 v0, 0x0

    return v0

    .line 6377
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$playVibration$0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 8
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 5023
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 5025
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 5023
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 5026
    .local v0, "waitMs":I
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_2b

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying vibration by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5028
    :cond_2b
    int-to-long v1, v0

    :try_start_2c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 5029
    goto :goto_31

    :catch_30
    move-exception v1

    .line 5030
    :goto_31
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v3

    .line 5031
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 5030
    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 5032
    return-void
.end method

.method private listenForCallState()V
    .registers 4

    .line 6290
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$17;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$17;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 6298
    return-void
.end method

.method private loadPolicyFile()V
    .registers 6

    .line 561
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NotificationService"

    const-string/jumbo v1, "loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 564
    const/4 v1, 0x0

    .line 566
    .local v1, "infile":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_11
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v1, v3

    .line 567
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1b} :catch_42
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_36
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1b} :catch_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_1b} :catch_1e
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1c

    goto :goto_46

    .line 579
    :catchall_1c
    move-exception v2

    goto :goto_4c

    .line 576
    :catch_1e
    move-exception v2

    .line 577
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1f
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 579
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_26
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_50

    goto :goto_49

    .line 574
    :catch_2a
    move-exception v2

    .line 575
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2b
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_1c

    .line 579
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :try_start_32
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_50

    goto :goto_49

    .line 572
    :catch_36
    move-exception v2

    .line 573
    .local v2, "e":Ljava/io/IOException;
    :try_start_37
    const-string v3, "NotificationService"

    const-string v4, "Unable to read notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_1c

    .line 579
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_50

    goto :goto_49

    .line 568
    :catch_42
    move-exception v3

    .line 571
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_43
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->readDefaultApprovedServices(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_1c

    .line 579
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_46
    :try_start_46
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 580
    :goto_49
    nop

    .line 581
    .end local v1    # "infile":Ljava/io/InputStream;
    monitor-exit v0

    .line 582
    return-void

    .line 579
    .restart local v1    # "infile":Ljava/io/InputStream;
    :goto_4c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 581
    .end local v1    # "infile":Ljava/io/InputStream;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_50

    throw v1
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 27
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    move-object/from16 v0, p0

    .line 6306
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6307
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6309
    .local v2, "rankings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotificationListenerService$Ranking;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v1, :cond_84

    .line 6310
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 6311
    .local v5, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v7, p1

    invoke-direct {v0, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 6312
    goto :goto_81

    .line 6314
    :cond_23
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 6315
    .local v6, "key":Ljava/lang/String;
    new-instance v8, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v8}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    move-object v15, v8

    .line 6317
    .local v15, "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    nop

    .line 6319
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 6320
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v8

    .line 6321
    xor-int/lit8 v11, v8, 0x1

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v12

    .line 6322
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v13

    .line 6323
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v14

    .line 6324
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v16

    iget-object v8, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6325
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v17

    .line 6326
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v18

    .line 6327
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v19

    .line 6328
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v20

    .line 6329
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v21

    .line 6330
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v22

    .line 6331
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v23

    .line 6317
    move-object v8, v15

    move-object v9, v6

    move-object v3, v15

    move-object/from16 v15, v16

    .end local v15    # "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    .local v3, "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    invoke-virtual/range {v8 .. v22}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZ)V

    .line 6333
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6309
    .end local v3    # "ranking":Landroid/service/notification/NotificationListenerService$Ranking;
    .end local v5    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "key":Ljava/lang/String;
    :goto_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 6336
    .end local v4    # "i":I
    :cond_84
    move-object/from16 v7, p1

    new-instance v3, Landroid/service/notification/NotificationRankingUpdate;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 6337
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v3, v4}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 6336
    return-object v3
.end method

.method private maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "preUpdate"    # Landroid/app/NotificationChannelGroup;
    .param p4, "update"    # Landroid/app/NotificationChannelGroup;

    .line 1752
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    if-eq v0, v1, :cond_3f

    .line 1753
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

    .line 1756
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1755
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 1758
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    .line 1757
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 1759
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1760
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1761
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 1753
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3f} :catch_40

    .line 1765
    :cond_3f
    goto :goto_48

    .line 1763
    :catch_40
    move-exception v0

    .line 1764
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about group change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1766
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_48
    return-void
.end method

.method private maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "preUpdate"    # Landroid/app/NotificationChannel;
    .param p4, "update"    # Landroid/app/NotificationChannel;

    .line 1711
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_c

    .line 1712
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_18

    .line 1713
    :cond_c
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_52

    .line 1714
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_52

    .line 1715
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_ID"

    .line 1718
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1717
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 1720
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 1719
    :goto_38
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 1721
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1722
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1723
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 1715
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_52} :catch_53

    .line 1727
    :cond_52
    goto :goto_5b

    .line 1725
    :catch_53
    move-exception v0

    .line 1726
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about channel change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1728
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_5b
    return-void
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .line 5838
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 5839
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 5838
    :goto_16
    return v0
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .line 5823
    const/4 v0, -0x1

    if-eq p2, v0, :cond_12

    .line 5827
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-eq v1, v0, :cond_12

    .line 5829
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 5823
    :goto_13
    return v0
.end method

.method private playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z
    .registers 12
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "soundUri"    # Landroid/net/Uri;

    .line 4966
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 4974
    .local v0, "looping":Z
    :goto_f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    if-ne v3, v2, :cond_27

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 4975
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_9c

    :cond_27
    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4979
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4980
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v5}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v5

    .line 4977
    invoke-static {v3, v1, v4, v5}, Lmiui/util/QuietUtils;->checkQuiet(IILjava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 4983
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    const-string v5, "_sound"

    .line 4982
    invoke-static {v3, v4, v5}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 4985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4987
    .local v3, "identity":J
    :try_start_52
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v5

    .line 4988
    .local v5, "player":Landroid/media/IRingtonePlayer;
    if-eqz v5, :cond_98

    .line 4989
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v6, :cond_80

    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with attributes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4990
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4989
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    :cond_80
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 4992
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 4991
    invoke-interface {v5, p2, v6, v0, v7}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_8d} :catch_97
    .catchall {:try_start_52 .. :try_end_8d} :catchall_92

    .line 4993
    nop

    .line 4997
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4993
    return v2

    .line 4997
    .end local v5    # "player":Landroid/media/IRingtonePlayer;
    :catchall_92
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4995
    :catch_97
    move-exception v2

    .line 4997
    .end local v3    # "identity":J
    :cond_98
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4998
    nop

    .line 5000
    :cond_9c
    return v1
.end method

.method private playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z
    .registers 12
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "vibration"    # [J
    .param p3, "delayVibForSound"    # Z

    .line 5007
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5011
    .local v0, "identity":J
    nop

    .line 5012
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    move v3, v4

    goto :goto_14

    :cond_13
    move v3, v2

    .line 5013
    .local v3, "insistent":Z
    :goto_14
    nop

    .line 5014
    if-eqz v3, :cond_19

    .line 5013
    move v5, v2

    goto :goto_1a

    .line 5014
    :cond_19
    const/4 v5, -0x1

    .line 5013
    :goto_1a
    invoke-static {p2, v5}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v5
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1e} :catch_4d
    .catchall {:try_start_6 .. :try_end_1e} :catchall_4b

    .end local v3    # "insistent":Z
    move-object v2, v5

    .line 5019
    .local v2, "effect":Landroid/os/VibrationEffect;
    nop

    .line 5018
    nop

    .line 5020
    if-eqz p3, :cond_31

    .line 5021
    :try_start_23
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$VixLwsYU0BcPccdsEjIXUFUzzx4;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$VixLwsYU0BcPccdsEjIXUFUzzx4;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5032
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_46

    .line 5034
    :cond_31
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    .line 5035
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 5034
    invoke-virtual {v3, v5, v6, v2, v7}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_4b

    .line 5037
    :goto_46
    nop

    .line 5039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5037
    return v4

    .line 5039
    .end local v2    # "effect":Landroid/os/VibrationEffect;
    :catchall_4b
    move-exception v2

    goto :goto_6d

    .line 5015
    :catch_4d
    move-exception v3

    .line 5016
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4e
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating vibration waveform with pattern: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5017
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5016
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_4b

    .line 5018
    nop

    .line 5039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5018
    return v2

    .line 5039
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5320
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5321
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    .line 5323
    :cond_d
    return-void
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1782
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 9
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .line 1786
    const/4 v0, 0x0

    .line 1788
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2f

    .line 1789
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1790
    .local v3, "hint":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 1791
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1793
    .local v4, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    if-eqz p2, :cond_1f

    and-int v5, v3, p2

    if-ne v5, v3, :cond_2c

    .line 1794
    :cond_1f
    if-nez v0, :cond_2a

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v5, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v5, v2

    :goto_2b
    move v0, v5

    .line 1788
    .end local v3    # "hint":I
    .end local v4    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1798
    .end local v1    # "i":I
    :cond_2f
    return v0
.end method

.method private removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5501
    const/4 v0, 0x0

    .line 5502
    .local v0, "wasPosted":Z
    const/4 v1, 0x0

    .line 5503
    .local v1, "recordInList":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_20

    .line 5505
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5506
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5507
    const/4 v0, 0x1

    .line 5509
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_33

    .line 5511
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 5513
    :cond_33
    return v0
.end method

.method private resolveNotificationUid(Ljava/lang/String;II)I
    .registers 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4188
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4190
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4191
    invoke-virtual {v0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 4190
    return v0

    .line 4192
    :catch_1d
    move-exception v0

    .line 4196
    :cond_1e
    return p2
.end method

.method private revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 10
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sourceUid"    # I

    .line 5732
    if-eqz p2, :cond_31

    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_31

    .line 5734
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5736
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 5737
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 5739
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {p2, v5}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 5736
    invoke-interface {v2, p1, v3, v4, v5}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_25} :catch_2b
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    goto :goto_2c

    .line 5743
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5740
    :catch_2b
    move-exception v2

    .line 5743
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5744
    nop

    .line 5745
    return-void

    .line 5732
    .end local v0    # "ident":J
    :cond_31
    :goto_31
    return-void
.end method

.method private scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5152
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5153
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5154
    .local v0, "m":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    const-wide/16 v1, 0xdac

    goto :goto_16

    :cond_14
    const-wide/16 v1, 0x7d0

    .line 5155
    .local v1, "delay":J
    :goto_16
    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5156
    return-void
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .registers 5
    .param p1, "listenerInterruptionFilter"    # I

    .line 5354
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 5355
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5358
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5359
    return-void
.end method

.method private scheduleKillTokenTimeout(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5172
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5173
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5174
    .local v0, "m":Landroid/os/Message;
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5175
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 5349
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 5350
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5351
    return-void
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .line 1619
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1620
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1619
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1621
    return-void
.end method

.method private updateEffectsSuppressorLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 1655
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v0

    .line 1656
    .local v0, "updatedSuppressedEffects":J
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    return-void

    .line 1657
    :cond_f
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v2

    .line 1658
    .local v2, "suppressors":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static {v3, v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    .line 1659
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 1660
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 1661
    const-string v3, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    .line 1662
    return-void
.end method

.method private updateInterruptionFilterLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 1860
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_b

    return-void

    .line 1861
    :cond_b
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1862
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    .line 1863
    return-void
.end method

.method private updateListenerHintsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 1646
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 1647
    .local v0, "hints":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_9

    return-void

    .line 1648
    :cond_9
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 1649
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1650
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    .line 1651
    return-void
.end method

.method private updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 26
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromListener"    # Z

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    .line 1675
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_60

    .line 1677
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1678
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x11

    const/4 v10, 0x0

    .line 1677
    move-object v0, v11

    move-object v3, v12

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1680
    invoke-virtual {v11, v13}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1681
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v10

    .line 1682
    .local v10, "profileIds":[I
    array-length v9, v10

    .line 1683
    .local v9, "N":I
    move v0, v15

    .local v0, "i":I
    :goto_34
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    if-ge v8, v9, :cond_60

    .line 1684
    aget v16, v10, v8

    .line 1685
    .local v16, "profileId":I
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x11

    const/16 v18, 0x0

    move-object v0, v11

    move-object v3, v12

    move/from16 v19, v8

    move/from16 v8, v16

    .end local v8    # "i":I
    .local v19, "i":I
    move/from16 v20, v9

    move/from16 v9, v17

    .end local v9    # "N":I
    .local v20, "N":I
    move-object/from16 v17, v10

    move-object/from16 v10, v18

    .end local v10    # "profileIds":[I
    .local v17, "profileIds":[I
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1683
    .end local v16    # "profileId":I
    add-int/lit8 v0, v19, 0x1

    .end local v19    # "i":I
    .restart local v0    # "i":I
    move-object/from16 v10, v17

    move/from16 v9, v20

    goto :goto_34

    .line 1691
    .end local v0    # "i":I
    .end local v17    # "profileIds":[I
    .end local v20    # "N":I
    :cond_60
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1692
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/server/notification/RankingHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 1694
    .local v0, "preUpdate":Landroid/app/NotificationChannel;
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v12, v13, v14, v2}, Lcom/android/server/notification/RankingHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 1695
    invoke-direct {v11, v12, v13, v0, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 1697
    if-nez p4, :cond_89

    .line 1698
    iget-object v2, v11, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1699
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12, v13, v3, v15}, Lcom/android/server/notification/RankingHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 1700
    .local v2, "modifiedChannel":Landroid/app/NotificationChannel;
    iget-object v3, v11, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1701
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x2

    .line 1700
    invoke-virtual {v3, v12, v4, v2, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 1705
    .end local v2    # "modifiedChannel":Landroid/app/NotificationChannel;
    :cond_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 1706
    return-void
.end method

.method private updateNotificationPulse()V
    .registers 3

    .line 6201
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6202
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6203
    monitor-exit v0

    .line 6204
    return-void

    .line 6203
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private writePolicyXml(Ljava/io/OutputStream;Z)V
    .registers 7
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 620
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 621
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 622
    const-string/jumbo v2, "notification-policy"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    const-string/jumbo v2, "version"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 624
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2, v3}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/Integer;)V

    .line 625
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 626
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 627
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 628
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ConditionProviders;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 629
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 631
    return-void
.end method


# virtual methods
.method addAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 3609
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 3610
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_b

    .line 3611
    return-void

    .line 3613
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    .line 3614
    const-string/jumbo v1, "ranker_group"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 3615
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    .line 3616
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 3618
    :cond_21
    return-void
.end method

.method addEnqueuedNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1317
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    return-void
.end method

.method addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1308
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1311
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    :cond_21
    return-void
.end method

.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 26
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 4806
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 4807
    .local v2, "buzz":Z
    const/4 v3, 0x0

    .line 4808
    .local v3, "beep":Z
    const/4 v4, 0x0

    .line 4810
    .local v4, "blink":Z
    iget-object v5, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 4811
    .local v5, "notification":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 4814
    .local v6, "key":Ljava/lang/String;
    nop

    .line 4815
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x3

    if-lt v7, v10, :cond_1c

    move v7, v9

    goto :goto_1d

    :cond_1c
    const/4 v7, 0x0

    .line 4817
    .local v7, "aboveThreshold":Z
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v10

    if-nez v10, :cond_29

    sget-boolean v10, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v10, :cond_29

    move v10, v9

    goto :goto_2a

    :cond_29
    const/4 v10, 0x0

    .line 4821
    .local v10, "MiuiCanInterrupt":Z
    :goto_2a
    if-eqz v6, :cond_36

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36

    move v11, v9

    goto :goto_37

    :cond_36
    const/4 v11, 0x0

    .line 4822
    .local v11, "wasBeep":Z
    :goto_37
    if-eqz v6, :cond_43

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_43

    move v12, v9

    goto :goto_44

    :cond_43
    const/4 v12, 0x0

    .line 4824
    .local v12, "wasBuzz":Z
    :goto_44
    const/4 v13, 0x0

    .line 4825
    .local v13, "hasValidVibrate":Z
    const/4 v14, 0x0

    .line 4826
    .local v14, "hasValidSound":Z
    const/4 v15, 0x0

    .line 4829
    .local v15, "sentAccessibilityEvent":Z
    iget-boolean v8, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v8, :cond_5b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v8

    if-le v8, v9, :cond_5b

    .line 4830
    iget-object v8, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 4831
    const/4 v15, 0x1

    .line 4834
    :cond_5b
    if-eqz v7, :cond_137

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    if-eqz v8, :cond_137

    .line 4836
    iget-boolean v8, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v8, :cond_137

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v8, :cond_137

    .line 4837
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v8

    .line 4838
    .local v8, "soundUri":Landroid/net/Uri;
    if-eqz v8, :cond_7b

    sget-object v9, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v9, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7b

    const/4 v9, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v9, 0x0

    :goto_7c
    move v14, v9

    .line 4839
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v9

    .line 4841
    .local v9, "vibration":[J
    if-nez v9, :cond_a5

    if-eqz v14, :cond_a5

    move/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 4843
    .end local v2    # "buzz":Z
    .local v17, "buzz":Z
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    move/from16 v18, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a9

    .end local v3    # "beep":Z
    .local v18, "beep":Z
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 4846
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 4845
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_a9

    .line 4847
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    goto :goto_a9

    .line 4849
    .end local v17    # "buzz":Z
    .end local v18    # "beep":Z
    .restart local v2    # "buzz":Z
    .restart local v3    # "beep":Z
    :cond_a5
    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "buzz":Z
    .end local v3    # "beep":Z
    .restart local v17    # "buzz":Z
    .restart local v18    # "beep":Z
    :cond_a9
    :goto_a9
    if-eqz v9, :cond_ad

    const/4 v2, 0x1

    goto :goto_ae

    :cond_ad
    const/4 v2, 0x0

    :goto_ae
    move v13, v2

    .line 4851
    if-nez v14, :cond_b6

    if-eqz v13, :cond_b4

    goto :goto_b6

    :cond_b4
    const/4 v2, 0x0

    goto :goto_b7

    :cond_b6
    :goto_b6
    const/4 v2, 0x1

    .line 4852
    .local v2, "hasAudibleAlert":Z
    :goto_b7
    if-eqz v2, :cond_134

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-nez v3, :cond_134

    .line 4853
    if-nez v15, :cond_cc

    .line 4854
    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 4855
    const/4 v3, 0x1

    .line 4857
    .end local v15    # "sentAccessibilityEvent":Z
    .local v3, "sentAccessibilityEvent":Z
    move v15, v3

    .end local v3    # "sentAccessibilityEvent":Z
    .restart local v15    # "sentAccessibilityEvent":Z
    :cond_cc
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_da

    const-string v3, "NotificationService"

    move/from16 v19, v2

    const-string v2, "Interrupting!"

    .end local v2    # "hasAudibleAlert":Z
    .local v19, "hasAudibleAlert":Z
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 4860
    .end local v19    # "hasAudibleAlert":Z
    .restart local v2    # "hasAudibleAlert":Z
    :cond_da
    move/from16 v19, v2

    .end local v2    # "hasAudibleAlert":Z
    .restart local v19    # "hasAudibleAlert":Z
    :goto_dc
    if-eqz v14, :cond_f1

    if-eqz v10, :cond_f1

    .line 4861
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 4862
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-eqz v2, :cond_ec

    .line 4863
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V

    .line 4864
    const/4 v2, 0x1

    .line 4869
    .end local v18    # "beep":Z
    .local v2, "beep":Z
    .local v3, "beep":Z
    :goto_ea
    move v3, v2

    goto :goto_f3

    .line 4866
    .end local v2    # "beep":Z
    .end local v3    # "beep":Z
    .restart local v18    # "beep":Z
    :cond_ec
    invoke-direct {v0, v1, v8}, Lcom/android/server/notification/NotificationManagerService;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z

    move-result v2

    goto :goto_ea

    .line 4869
    :cond_f1
    move/from16 v3, v18

    .end local v18    # "beep":Z
    .restart local v3    # "beep":Z
    :goto_f3
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 4870
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-nez v2, :cond_fd

    const/4 v2, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v2, 0x0

    .line 4873
    .local v2, "ringerModeSilent":Z
    :goto_fe
    move/from16 v20, v3

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 4874
    .end local v3    # "beep":Z
    .local v20, "beep":Z
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-nez v3, :cond_10a

    const/4 v3, 0x1

    goto :goto_10b

    :cond_10a
    const/4 v3, 0x0

    .line 4876
    .local v3, "exRingerModeSilent":Z
    :goto_10b
    move/from16 v21, v4

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .end local v4    # "blink":Z
    .local v21, "blink":Z
    if-nez v4, :cond_131

    if-eqz v13, :cond_131

    if-nez v2, :cond_131

    if-nez v3, :cond_131

    .line 4882
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v22, v2

    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .end local v2    # "ringerModeSilent":Z
    .local v22, "ringerModeSilent":Z
    move/from16 v23, v3

    const-string v3, "_vibrate"

    .line 4881
    .end local v3    # "exRingerModeSilent":Z
    .local v23, "exRingerModeSilent":Z
    invoke-static {v4, v2, v3}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 4884
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 4886
    invoke-direct {v0, v1, v9, v14}, Lcom/android/server/notification/NotificationManagerService;->playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z

    move-result v2

    .line 4893
    .end local v8    # "soundUri":Landroid/net/Uri;
    .end local v9    # "vibration":[J
    .end local v17    # "buzz":Z
    .end local v19    # "hasAudibleAlert":Z
    .end local v22    # "ringerModeSilent":Z
    .end local v23    # "exRingerModeSilent":Z
    .local v2, "buzz":Z
    move/from16 v17, v2

    .end local v2    # "buzz":Z
    .end local v20    # "beep":Z
    .restart local v17    # "buzz":Z
    .restart local v18    # "beep":Z
    :cond_131
    move/from16 v18, v20

    goto :goto_13d

    .end local v21    # "blink":Z
    .restart local v4    # "blink":Z
    :cond_134
    move/from16 v21, v4

    .end local v4    # "blink":Z
    .restart local v21    # "blink":Z
    goto :goto_13d

    .end local v17    # "buzz":Z
    .end local v18    # "beep":Z
    .end local v21    # "blink":Z
    .restart local v2    # "buzz":Z
    .local v3, "beep":Z
    .restart local v4    # "blink":Z
    :cond_137
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v21, v4

    .end local v2    # "buzz":Z
    .end local v3    # "beep":Z
    .end local v4    # "blink":Z
    .restart local v17    # "buzz":Z
    .restart local v18    # "beep":Z
    .restart local v21    # "blink":Z
    :goto_13d
    if-eqz v11, :cond_144

    if-nez v14, :cond_144

    .line 4894
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 4896
    :cond_144
    if-eqz v12, :cond_14b

    if-nez v13, :cond_14b

    .line 4897
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 4902
    :cond_14b
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 4905
    .local v2, "wasShowLights":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v3

    if-eqz v3, :cond_172

    .line 4906
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_172

    .line 4907
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4908
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 4909
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v3, :cond_170

    .line 4910
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3}, Lcom/android/server/lights/Light;->pulse()V

    .line 4912
    :cond_170
    const/4 v4, 0x1

    .end local v21    # "blink":Z
    .restart local v4    # "blink":Z
    goto :goto_179

    .line 4913
    .end local v4    # "blink":Z
    .restart local v21    # "blink":Z
    :cond_172
    if-eqz v2, :cond_177

    .line 4914
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 4916
    :cond_177
    move/from16 v4, v21

    .end local v21    # "blink":Z
    .restart local v4    # "blink":Z
    :goto_179
    if-nez v17, :cond_17f

    if-nez v18, :cond_17f

    if-eqz v4, :cond_1c0

    .line 4917
    :cond_17f
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 4918
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v8

    const/16 v9, 0xc7

    .line 4919
    invoke-virtual {v8, v9}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v8

    .line 4920
    invoke-virtual {v8, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v8

    .line 4921
    if-eqz v17, :cond_195

    move v9, v3

    goto :goto_196

    :cond_195
    const/4 v9, 0x0

    :goto_196
    if-eqz v18, :cond_19b

    const/16 v16, 0x2

    goto :goto_19d

    :cond_19b
    const/16 v16, 0x0

    :goto_19d
    or-int v9, v9, v16

    if-eqz v4, :cond_1a4

    const/16 v16, 0x4

    goto :goto_1a6

    :cond_1a4
    const/16 v16, 0x0

    :goto_1a6
    or-int v9, v9, v16

    invoke-virtual {v8, v9}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v8

    .line 4918
    invoke-static {v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 4922
    if-eqz v17, :cond_1b3

    move v8, v3

    goto :goto_1b4

    :cond_1b3
    const/4 v8, 0x0

    :goto_1b4
    if-eqz v18, :cond_1b8

    move v9, v3

    goto :goto_1b9

    :cond_1b8
    const/4 v9, 0x0

    :goto_1b9
    if-eqz v4, :cond_1bc

    goto :goto_1bd

    :cond_1bc
    const/4 v3, 0x0

    :goto_1bd
    invoke-static {v6, v8, v9, v3}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    .line 4924
    :cond_1c0
    return-void
.end method

.method protected calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I
    .registers 9
    .param p1, "incomingPolicy"    # Landroid/app/NotificationManager$Policy;
    .param p2, "currPolicy"    # Landroid/app/NotificationManager$Policy;
    .param p3, "targetSdkVersion"    # I

    .line 1883
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1884
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    return v0

    .line 1886
    :cond_8
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    .line 1896
    .local v0, "effectsIntroducedInP":[I
    iget v1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1897
    .local v1, "newSuppressedVisualEffects":I
    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-ge p3, v2, :cond_36

    .line 1899
    nop

    .local v3, "i":I
    :goto_16
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v0

    if-ge v2, v3, :cond_27

    .line 1900
    aget v3, v0, v2

    not-int v3, v3

    and-int/2addr v1, v3

    .line 1901
    iget v3, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    aget v4, v0, v2

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 1899
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_16

    .line 1905
    .end local v3    # "i":I
    :cond_27
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2f

    .line 1906
    or-int/lit8 v1, v1, 0x8

    .line 1907
    or-int/lit8 v1, v1, 0x4

    .line 1909
    :cond_2f
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_68

    .line 1910
    or-int/lit8 v1, v1, 0x10

    goto :goto_68

    .line 1913
    :cond_36
    add-int/lit8 v2, v1, -0x2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-lez v2, :cond_3e

    move v3, v4

    nop

    :cond_3e
    move v2, v3

    .line 1916
    .local v2, "hasNewEffects":Z
    if-eqz v2, :cond_58

    .line 1918
    and-int/lit8 v1, v1, -0x4

    .line 1922
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_49

    .line 1923
    or-int/lit8 v1, v1, 0x2

    .line 1925
    :cond_49
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_68

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_68

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_68

    .line 1930
    or-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1934
    :cond_58
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_62

    .line 1935
    or-int/lit8 v1, v1, 0x8

    .line 1936
    or-int/lit8 v1, v1, 0x4

    .line 1937
    or-int/lit16 v1, v1, 0x80

    .line 1939
    :cond_62
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_68

    .line 1940
    or-int/lit8 v1, v1, 0x10

    .line 1945
    .end local v2    # "hasNewEffects":Z
    :cond_68
    :goto_68
    return v1

    nop

    :array_6a
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method canUseManagedServices(Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6397
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.type.watch"

    .line 6398
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    move v0, v1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 6400
    .local v0, "canUseManagedServices":Z
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_27
    if-ge v1, v3, :cond_35

    aget-object v4, v2, v1

    .line 6402
    .local v4, "whitelisted":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 6403
    const/4 v0, 0x1

    .line 6400
    .end local v4    # "whitelisted":Ljava/lang/String;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 6407
    :cond_35
    return v0
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 17
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5965
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$16;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p5

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService$16;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZ)V

    invoke-virtual {v0, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5994
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 25
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "mustHaveFlags"    # I
    .param p6, "mustNotHaveFlags"    # I
    .param p7, "doit"    # Z
    .param p8, "userId"    # I
    .param p9, "reason"    # I
    .param p10, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 5849
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v13, Lcom/android/server/notification/NotificationManagerService$15;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p10

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p8

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p9

    move/from16 v11, p7

    move-object/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService$15;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5885
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 31
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "rank"    # I
    .param p12, "count"    # I
    .param p13, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 5772
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v15, Lcom/android/server/notification/NotificationManagerService$14;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p13

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move-object/from16 v8, p4

    move/from16 v9, p9

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p10

    move/from16 v13, p8

    move/from16 v14, p11

    move-object/from16 v16, v0

    move-object v0, v15

    move/from16 v15, p12

    invoke-direct/range {v1 .. v15}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZII)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5816
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 26
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 5755
    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 5757
    return-void
.end method

.method cancelToastLocked(I)V
    .registers 7
    .param p1, "index"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5109
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5111
    .local v0, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_8
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v1}, Landroid/app/ITransientNotification;->hide()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 5117
    goto :goto_31

    .line 5112
    :catch_e
    move-exception v1

    .line 5113
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5121
    .local v1, "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 5128
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleKillTokenTimeout(Landroid/os/IBinder;)V

    .line 5130
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 5131
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_56

    .line 5135
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    .line 5137
    :cond_56
    return-void
.end method

.method clearNotifications()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1300
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1301
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1302
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1303
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1304
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 3840
    const-string v0, "Current Notification Manager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3841
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_16

    .line 3842
    const-string v0, " (filtered to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3844
    :cond_16
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 3846
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v1

    .line 3848
    .local v0, "zenOnly":Z
    :goto_27
    if-nez v0, :cond_56

    .line 3849
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3850
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3851
    .local v3, "N":I
    if-lez v3, :cond_51

    .line 3852
    const-string v4, "  Toast Queue:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3853
    move v4, v1

    .local v4, "i":I
    :goto_3a
    if-ge v4, v3, :cond_4c

    .line 3854
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string v6, "    "

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3853
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 3856
    .end local v4    # "i":I
    :cond_4c
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3858
    :cond_51
    monitor-exit v2

    goto :goto_56

    .end local v3    # "N":I
    :catchall_53
    move-exception v1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_53

    throw v1

    .line 3861
    :cond_56
    :goto_56
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3862
    if-nez v0, :cond_1eb

    .line 3865
    :try_start_5b
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    if-nez v3, :cond_62

    .line 3866
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3868
    :cond_62
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v3, :cond_14c

    .line 3869
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3870
    .restart local v3    # "N":I
    if-lez v3, :cond_98

    .line 3871
    const-string v4, "  Lights List:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    move v4, v1

    .restart local v4    # "i":I
    :goto_74
    if-ge v4, v3, :cond_93

    .line 3873
    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_80

    .line 3874
    const-string v5, "  > "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_85

    .line 3876
    :cond_80
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3878
    :goto_85
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 3880
    .end local v4    # "i":I
    :cond_93
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3882
    :cond_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUseAttentionLight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3883
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mNotificationPulseEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSoundNotificationKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3885
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mVibrateNotificationKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableNotificationEffects="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSystemReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaxPackageEnqueueRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3891
    .end local v3    # "N":I
    :cond_14c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mArchive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3892
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3893
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    move v4, v1

    .line 3894
    .local v4, "j":I
    :goto_16d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a8

    .line 3895
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 3896
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_182

    invoke-virtual {p2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v6, :cond_182

    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_16d

    .line 3897
    .restart local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3898
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x5

    if-lt v4, v6, :cond_1a7

    .line 3899
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a8

    const-string v6, "    ..."

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a8

    .line 3902
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1a7
    goto :goto_16d

    .line 3904
    :cond_1a8
    :goto_1a8
    if-nez v0, :cond_1eb

    .line 3905
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3906
    .local v5, "N":I
    if-lez v5, :cond_1e2

    .line 3907
    const-string v6, "  Enqueued Notification List:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3908
    move v6, v1

    .local v6, "i":I
    :goto_1b8
    if-ge v6, v5, :cond_1dd

    .line 3909
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 3910
    .local v7, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v8, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v8, :cond_1cf

    iget-object v8, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v8}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v8

    if-nez v8, :cond_1cf

    .end local v7    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_1da

    .line 3911
    .restart local v7    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_1cf
    const-string v8, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-boolean v10, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v7, p1, v8, v9, v10}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 3908
    .end local v7    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_1da
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b8

    .line 3913
    .end local v6    # "i":I
    :cond_1dd
    const-string v6, "  "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3916
    :cond_1e2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v4    # "j":I
    .end local v5    # "N":I
    goto :goto_1eb

    .line 3977
    :catchall_1e8
    move-exception v1

    goto/16 :goto_31d

    .line 3920
    :cond_1eb
    :goto_1eb
    if-nez v0, :cond_279

    .line 3921
    const-string v3, "\n  Ranking Config:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3922
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3924
    const-string v3, "\n  Notification listeners:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3925
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3926
    const-string v3, "    mListenerHints: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3927
    const-string v3, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3928
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3929
    .local v3, "N":I
    move v4, v1

    .local v4, "i":I
    :goto_219
    if-ge v4, v3, :cond_26a

    .line 3930
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3931
    .local v5, "hint":I
    if-lez v4, :cond_228

    const/16 v6, 0x3b

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 3932
    :cond_228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hint["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3934
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 3935
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 3936
    .local v6, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 3938
    .local v7, "listenerSize":I
    move v8, v1

    .local v8, "j":I
    :goto_24e
    if-ge v8, v7, :cond_267

    .line 3939
    if-lez v4, :cond_257

    const/16 v9, 0x2c

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 3940
    :cond_257
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 3941
    .local v9, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v9, :cond_264

    .line 3942
    iget-object v10, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3938
    .end local v9    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_264
    add-int/lit8 v8, v8, 0x1

    goto :goto_24e

    .line 3929
    .end local v5    # "hint":I
    .end local v6    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    .end local v7    # "listenerSize":I
    .end local v8    # "j":I
    :cond_267
    add-int/lit8 v4, v4, 0x1

    goto :goto_219

    .line 3946
    .end local v4    # "i":I
    :cond_26a
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 3947
    const-string v1, "\n  Notification assistant services:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3948
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3951
    .end local v3    # "N":I
    :cond_279
    iget-boolean v1, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v1, :cond_27f

    if-eqz v0, :cond_29f

    .line 3952
    :cond_27f
    const-string v1, "\n  Zen Mode:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3953
    const-string v1, "    mInterruptionFilter="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3954
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3956
    const-string v1, "\n  Zen Log:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3957
    const-string v1, "    "

    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3960
    :cond_29f
    const-string v1, "\n  Condition providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3961
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3963
    const-string v1, "\n  Group summaries:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3964
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3965
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 3966
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3967
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_30c

    .line 3968
    const-string v5, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    const-string v5, "      "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 3971
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_30c
    goto :goto_2b8

    .line 3973
    :cond_30d
    if-nez v0, :cond_31b

    .line 3974
    const-string v1, "\n  Usage Stats:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3975
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v3, "    "

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 3977
    :cond_31b
    monitor-exit v2

    .line 3978
    return-void

    .line 3977
    :goto_31d
    monitor-exit v2
    :try_end_31e
    .catchall {:try_start_5b .. :try_end_31e} :catchall_1e8

    throw v1
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .registers 31
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "incomingUserId"    # I

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v13, p3

    move/from16 v12, p6

    move-object/from16 v11, p7

    .line 4045
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_36

    .line 4046
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueNotificationInternal: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    :cond_36
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 4051
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "enqueueNotification"

    move/from16 v1, p4

    move v2, v13

    move/from16 v3, p8

    move-object v7, v15

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 4053
    .local v7, "userId":I
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v17, v0

    .line 4055
    .local v17, "user":Landroid/os/UserHandle;
    if-eqz v15, :cond_254

    if-eqz v11, :cond_254

    .line 4061
    invoke-direct {v8, v14, v13, v7}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;II)I

    move-result v0

    move v6, v0

    .line 4065
    .local v6, "notificationUid":I
    :try_start_57
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x10000000

    .line 4067
    const/4 v2, -0x1

    const/4 v5, 0x0

    if-ne v7, v2, :cond_61

    .line 4065
    move v2, v5

    goto :goto_62

    :cond_61
    move v2, v7

    :goto_62
    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4068
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, v11}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 4070
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.USE_COLORIZED_NOTIFICATIONS"

    invoke-virtual {v1, v2, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_71} :catch_247

    .line 4072
    .local v1, "canColorize":I
    if-nez v1, :cond_81

    .line 4073
    :try_start_73
    iget v2, v11, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v11, Landroid/app/Notification;->flags:I
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_79} :catch_7a

    goto :goto_87

    .line 4078
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "canColorize":I
    :catch_7a
    move-exception v0

    move/from16 v16, v6

    move-object v13, v15

    move v15, v7

    goto/16 :goto_24c

    .line 4075
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "canColorize":I
    :cond_81
    :try_start_81
    iget v2, v11, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v11, Landroid/app/Notification;->flags:I
    :try_end_87
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_81 .. :try_end_87} :catch_247

    .line 4081
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "canColorize":I
    :goto_87
    nop

    .line 4083
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 4086
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 4087
    .local v0, "channelId":Ljava/lang/String;
    iget-boolean v1, v8, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    if-eqz v1, :cond_a9

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v11}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 4088
    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v11}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 4090
    :cond_a9
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v15, v6, v0, v5}, Lcom/android/server/notification/RankingHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v4

    .line 4092
    .local v4, "channel":Landroid/app/NotificationChannel;
    if-nez v4, :cond_142

    .line 4093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Channel found for pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", channelId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", opPkg="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", callingUid="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", userId="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", incomingUserId="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p8

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", notificationUid="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", notification="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4104
    .local v2, "noChannelStr":Ljava/lang/String;
    const-string v9, "NotificationService"

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v9, v15, v6}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_11d

    const/4 v5, 0x1

    nop

    :cond_11d
    move v1, v5

    .line 4108
    .local v1, "appNotificationsOff":Z
    if-nez v1, :cond_141

    .line 4109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Developer warning for package \""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\"\nFailed to post notification on channel \""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\"\nSee log for more details"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/android/server/notification/NotificationManagerService;->doChannelWarningToast(Ljava/lang/CharSequence;)V

    .line 4113
    :cond_141
    return-void

    .line 4116
    .end local v1    # "appNotificationsOff":Z
    .end local v2    # "noChannelStr":Ljava/lang/String;
    :cond_142
    move-object/from16 v3, p5

    move/from16 v10, p8

    new-instance v2, Landroid/service/notification/StatusBarNotification;

    const/16 v18, 0x0

    .line 4118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v9, v2

    move-object v10, v15

    move-object v11, v14

    move/from16 v12, p6

    move v5, v13

    move-object v13, v3

    move v14, v6

    move-object v1, v15

    move/from16 v15, p4

    move-object/from16 v16, p7

    invoke-direct/range {v9 .. v20}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 4119
    .local v9, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10, v9, v4}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    move-object v10, v2

    .line 4120
    .local v10, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, v8, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, v1, v5}, Lcom/android/server/notification/RankingHelper;->getIsAppImportanceLocked(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 4122
    move-object/from16 v11, p7

    iget v2, v11, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1df

    .line 4123
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v2

    .line 4124
    .local v2, "fgServiceShown":Z
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v12

    const/4 v13, 0x4

    and-int/2addr v12, v13

    if-eqz v12, :cond_187

    if-nez v2, :cond_195

    .line 4126
    :cond_187
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_1ae

    .line 4127
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v12

    if-nez v12, :cond_195

    goto :goto_1ae

    .line 4142
    :cond_195
    if-nez v2, :cond_1df

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1df

    const-string/jumbo v12, "miscellaneous"

    .line 4143
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1df

    .line 4144
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 4145
    invoke-virtual {v10, v4}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 4145
    .end local v2    # "fgServiceShown":Z
    goto :goto_1df

    .line 4130
    .restart local v2    # "fgServiceShown":Z
    :cond_1ae
    :goto_1ae
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v14, 0x2

    if-nez v12, :cond_1d7

    const-string/jumbo v12, "miscellaneous"

    .line 4131
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1bf

    goto :goto_1d7

    .line 4134
    :cond_1bf
    invoke-virtual {v4, v14}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 4135
    if-nez v2, :cond_1cc

    .line 4136
    invoke-virtual {v4, v13}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 4137
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    goto :goto_1cd

    .line 4139
    :cond_1cc
    const/4 v12, 0x1

    :goto_1cd
    iget-object v13, v8, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const/4 v15, 0x0

    invoke-virtual {v13, v1, v6, v4, v15}, Lcom/android/server/notification/RankingHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 4140
    invoke-virtual {v10, v4}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1e1

    .line 4132
    :cond_1d7
    :goto_1d7
    const/4 v12, 0x1

    const/4 v15, 0x0

    const-string v13, "Bumped for foreground service"

    invoke-virtual {v10, v14, v13}, Lcom/android/server/notification/NotificationRecord;->setImportance(ILjava/lang/CharSequence;)V

    goto :goto_1e1

    .line 4149
    .end local v2    # "fgServiceShown":Z
    :cond_1df
    :goto_1df
    const/4 v12, 0x1

    const/4 v15, 0x0

    :goto_1e1
    iget-object v2, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4150
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1ea

    goto :goto_1eb

    .line 4149
    :cond_1ea
    move v12, v15

    :goto_1eb
    move-object v13, v1

    move-object v1, v8

    move v2, v7

    move v3, v6

    move-object v14, v4

    move/from16 v4, p6

    .line 4149
    .end local v4    # "channel":Landroid/app/NotificationChannel;
    .local v14, "channel":Landroid/app/NotificationChannel;
    move-object/from16 v5, p5

    move/from16 v16, v6

    move-object v6, v10

    .line 4149
    .end local v6    # "notificationUid":I
    .local v16, "notificationUid":I
    move v15, v7

    move v7, v12

    .line 4149
    .end local v7    # "userId":I
    .local v15, "userId":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-nez v1, :cond_200

    .line 4151
    return-void

    .line 4155
    :cond_200
    iget-object v1, v11, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v1, :cond_23c

    .line 4156
    iget-object v1, v11, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 4157
    .local v1, "intentCount":I
    if-lez v1, :cond_23c

    .line 4158
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 4159
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 4160
    .local v2, "am":Landroid/app/ActivityManagerInternal;
    const-class v3, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 4161
    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$LocalService;->getNotificationWhitelistDuration()J

    move-result-wide v3

    .line 4162
    .local v3, "duration":J
    const/16 v21, 0x0

    .line 4162
    .local v21, "i":I
    :goto_222
    move/from16 v5, v21

    .line 4162
    .end local v21    # "i":I
    .local v5, "i":I
    if-ge v5, v1, :cond_23c

    .line 4163
    iget-object v6, v11, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 4164
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v6, :cond_239

    .line 4165
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v7

    sget-object v12, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    invoke-virtual {v2, v7, v12, v3, v4}, Landroid/app/ActivityManagerInternal;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V

    .line 4162
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_239
    add-int/lit8 v21, v5, 0x1

    .line 4162
    .end local v5    # "i":I
    .restart local v21    # "i":I
    goto :goto_222

    .line 4172
    .end local v1    # "intentCount":I
    .end local v2    # "am":Landroid/app/ActivityManagerInternal;
    .end local v3    # "duration":J
    .end local v21    # "i":I
    :cond_23c
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-direct {v2, v8, v15, v10}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4173
    return-void

    .line 4078
    .end local v0    # "channelId":Ljava/lang/String;
    .end local v9    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v10    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v14    # "channel":Landroid/app/NotificationChannel;
    .end local v15    # "userId":I
    .end local v16    # "notificationUid":I
    .local v6, "notificationUid":I
    .restart local v7    # "userId":I
    :catch_247
    move-exception v0

    move/from16 v16, v6

    move-object v13, v15

    move v15, v7

    .line 4079
    .end local v6    # "notificationUid":I
    .end local v7    # "userId":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "userId":I
    .restart local v16    # "notificationUid":I
    :goto_24c
    const-string v1, "NotificationService"

    const-string v2, "Cannot create a context for sending app"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4080
    return-void

    .line 4056
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "userId":I
    .end local v16    # "notificationUid":I
    .restart local v7    # "userId":I
    :cond_254
    move-object v13, v15

    move v15, v7

    .line 4056
    .end local v7    # "userId":I
    .restart local v15    # "userId":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null not allowed: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notification="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "groupKey"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 6076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6077
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6078
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 6079
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 6078
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6080
    return-object v0
.end method

.method findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 6117
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_f

    .line 6118
    return-object v1

    .line 6120
    :cond_f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1e

    .line 6122
    return-object v1

    .line 6124
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method finishTokenLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "t"    # Landroid/os/IBinder;

    .line 5140
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5145
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 5147
    return-void
.end method

.method getBinderService()Landroid/app/INotificationManager;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1867
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method protected getCompanionManager()Landroid/companion/ICompanionDeviceManager;
    .registers 2

    .line 6368
    const-string v0, "companiondevice"

    .line 6369
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6368
    invoke-static {v0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getInternalService()Lcom/android/server/notification/NotificationManagerInternal;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1975
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-object v0
.end method

.method protected getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "excludedId"    # I
    .param p4, "excludedTag"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 4278
    const/4 v0, 0x0

    .line 4279
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4280
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "count":I
    :goto_a
    if-ge v0, v1, :cond_42

    .line 4281
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 4282
    .local v4, "existing":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4283
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_3f

    .line 4284
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v5, p3, :cond_3d

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4285
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 4286
    goto :goto_3f

    .line 4288
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    .line 4280
    .end local v4    # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4291
    .end local v0    # "i":I
    :cond_42
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4292
    .local v0, "M":I
    nop

    .local v2, "i":I
    :goto_49
    if-ge v2, v0, :cond_6c

    .line 4293
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 4294
    .restart local v4    # "existing":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4295
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_69

    .line 4296
    add-int/lit8 v3, v3, 0x1

    .line 4292
    .end local v4    # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 4299
    .end local v2    # "i":I
    :cond_6c
    return v3
.end method

.method getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1322
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    return-object v0
.end method

.method getNotificationRecordCount()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1281
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1282
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 1283
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1285
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 1286
    .local v3, "posted":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1287
    add-int/lit8 v1, v1, -0x1

    .line 1289
    :cond_3e
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1290
    add-int/lit8 v1, v1, -0x1

    .line 1292
    .end local v3    # "posted":Lcom/android/server/notification/NotificationRecord;
    :cond_52
    goto :goto_24

    .line 1294
    :cond_53
    monitor-exit v0

    return v1

    .line 1295
    .end local v1    # "count":I
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method handleRankingSort()V
    .registers 16

    .line 5272
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v0, :cond_5

    return-void

    .line 5273
    :cond_5
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5274
    :try_start_8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5276
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5277
    .local v2, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v3, v1, [I

    .line 5278
    .local v3, "visibilities":[I
    new-array v4, v1, [Z

    .line 5279
    .local v4, "showBadges":[Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5280
    .local v5, "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5281
    .local v6, "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5282
    .local v7, "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5283
    .local v8, "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5284
    .local v9, "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5285
    .local v10, "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    move v12, v11

    .local v12, "i":I
    :goto_37
    if-ge v12, v1, :cond_8e

    .line 5286
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 5287
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5288
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v14

    aput v14, v3, v12

    .line 5289
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v14

    aput-boolean v14, v4, v12

    .line 5290
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5291
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5292
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5293
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5294
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5295
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5296
    iget-object v14, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v14, v13}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 5285
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v12, v12, 0x1

    goto :goto_37

    .line 5298
    .end local v12    # "i":I
    :cond_8e
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 5299
    nop

    .local v11, "i":I
    :goto_96
    if-ge v11, v1, :cond_128

    .line 5300
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 5301
    .local v12, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    aget v13, v3, v11

    .line 5302
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v14

    if-ne v13, v14, :cond_121

    aget-boolean v13, v4, v11

    .line 5303
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v14

    if-ne v13, v14, :cond_121

    .line 5304
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5305
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5306
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5307
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5308
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5309
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 5310
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 5309
    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11d

    goto :goto_121

    .line 5299
    .end local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_11d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_96

    .line 5311
    .restart local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_121
    :goto_121
    sget-object v13, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 5312
    monitor-exit v0

    return-void

    .line 5315
    .end local v1    # "N":I
    .end local v2    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "visibilities":[I
    .end local v4    # "showBadges":[Z
    .end local v5    # "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    .end local v6    # "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    .end local v9    # "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "i":I
    .end local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_128
    monitor-exit v0

    .line 5316
    return-void

    .line 5315
    :catchall_12a
    move-exception v1

    monitor-exit v0
    :try_end_12c
    .catchall {:try_start_8 .. :try_end_12c} :catchall_12a

    throw v1
.end method

.method protected handleSavePolicyFile()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 586
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 587
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSavePolicyFile:Lcom/android/server/notification/NotificationManagerService$SavePolicyFileRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    :cond_15
    return-void
.end method

.method hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 9
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6341
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_a

    .line 6342
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 6345
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 6346
    return v1

    .line 6348
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6350
    .local v2, "identity":J
    :try_start_14
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    iget-object v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 6351
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 6350
    invoke-interface {v0, v4, v5}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 6352
    .local v0, "associations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_26} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_26} :catch_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_2f
    .catchall {:try_start_14 .. :try_end_26} :catchall_2d

    if-nez v4, :cond_55

    .line 6353
    const/4 v1, 0x1

    .line 6362
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6353
    return v1

    .line 6362
    .end local v0    # "associations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2d
    move-exception v0

    goto :goto_50

    .line 6359
    :catch_2f
    move-exception v0

    .line 6360
    .local v0, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot verify listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_55

    .line 6357
    :catch_47
    move-exception v0

    .line 6358
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "NotificationService"

    const-string v5, "Cannot reach companion device service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_2d

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_55

    .line 6362
    :goto_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6355
    :catch_54
    move-exception v0

    .line 6362
    :cond_55
    :goto_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6363
    nop

    .line 6364
    return v1
.end method

.method protected hideNotificationsForPackages([Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgs"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6166
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6167
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6168
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6169
    .local v2, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6170
    .local v3, "numNotifications":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_33

    .line 6171
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 6172
    .local v5, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 6173
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 6174
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6170
    .end local v5    # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 6178
    .end local v4    # "i":I
    :cond_33
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyHiddenLocked(Ljava/util/List;)V

    .line 6179
    .end local v1    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3    # "numNotifications":I
    monitor-exit v0

    .line 6180
    return-void

    .line 6179
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 6155
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6156
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 6157
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 6158
    return v1

    .line 6156
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6161
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5188
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5189
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 5190
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5191
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_2b

    .line 5192
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5193
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 5194
    return v3

    .line 5191
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 5197
    .end local v3    # "i":I
    :cond_2b
    const/4 v3, -0x1

    return v3
.end method

.method indexOfToastPackageLocked(Ljava/lang/String;)I
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5203
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 5204
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5205
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 5206
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5207
    .local v3, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 5208
    return v2

    .line 5205
    .end local v3    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5211
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, -0x1

    return v2
.end method

.method init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;)V
    .registers 38
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p3, "packageManagerClient"    # Landroid/content/pm/PackageManager;
    .param p4, "lightsManager"    # Lcom/android/server/lights/LightsManager;
    .param p5, "notificationListeners"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p6, "notificationAssistants"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p7, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;
    .param p8, "companionManager"    # Landroid/companion/ICompanionDeviceManager;
    .param p9, "snoozeHelper"    # Lcom/android/server/notification/SnoozeHelper;
    .param p10, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p11, "policyFile"    # Landroid/util/AtomicFile;
    .param p12, "activityManager"    # Landroid/app/ActivityManager;
    .param p13, "groupHelper"    # Lcom/android/server/notification/GroupHelper;
    .param p14, "am"    # Landroid/app/IActivityManager;
    .param p15, "appUsageStats"    # Landroid/app/usage/UsageStatsManagerInternal;
    .param p16, "dpm"    # Landroid/app/admin/DevicePolicyManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1382
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "max_notification_enqueue_rate"

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 1386
    nop

    .line 1387
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "accessibility"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1388
    move-object/from16 v4, p14

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 1389
    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1390
    move-object/from16 v6, p3

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 1391
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "appops"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1392
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1393
    move-object/from16 v7, p15

    iput-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "alarm"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1395
    move-object/from16 v8, p8

    iput-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 1396
    move-object/from16 v9, p12

    iput-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1397
    const-string v0, "deviceidle"

    .line 1398
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1397
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1399
    move-object/from16 v10, p16

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1401
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v11, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1402
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1405
    const v0, 0x107003e

    const/4 v12, 0x0

    :try_start_93
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_97
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_93 .. :try_end_97} :catch_9b

    .line 1408
    .local v0, "extractorNames":[Ljava/lang/String;
    nop

    .line 1407
    .end local v0    # "extractorNames":[Ljava/lang/String;
    .local v19, "extractorNames":[Ljava/lang/String;
    :goto_98
    move-object/from16 v19, v0

    goto :goto_a0

    .line 1406
    .end local v19    # "extractorNames":[Ljava/lang/String;
    :catch_9b
    move-exception v0

    move-object v13, v0

    .line 1407
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-array v0, v12, [Ljava/lang/String;

    .line 1407
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_98

    .line 1409
    .restart local v19    # "extractorNames":[Ljava/lang/String;
    :goto_a0
    move-object/from16 v15, p10

    iput-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1410
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1411
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1412
    move-object/from16 v14, p7

    iput-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 1413
    new-instance v0, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v12, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v0, v13, v12, v4}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1414
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v4, v1}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v0, v4}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 1439
    new-instance v0, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v16, v13

    move-object v13, v0

    move-object v14, v4

    move-object v15, v12

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v13 .. v19}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1445
    move-object/from16 v4, p9

    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 1446
    move-object/from16 v5, p13

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 1449
    move-object/from16 v6, p5

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1452
    move-object/from16 v12, p6

    iput-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 1455
    new-instance v0, Lcom/android/server/notification/-$$Lambda$ouaYRM5YVYoMkUW8dm6TnIjLfgg;

    invoke-direct {v0, v1}, Lcom/android/server/notification/-$$Lambda$ouaYRM5YVYoMkUW8dm6TnIjLfgg;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    .line 1457
    move-object/from16 v13, p11

    iput-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 1458
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 1460
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1461
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_128

    .line 1462
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, v14}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 1465
    :cond_128
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1466
    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1468
    const v14, 0x107003d

    const/16 v15, 0x11

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v3, v14, v15, v0}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v14, 0x1040161

    .line 1473
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1472
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    .line 1474
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1475
    const/4 v14, 0x4

    invoke-virtual {v0, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v14, 0x2

    .line 1476
    invoke-virtual {v0, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1477
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 1478
    const v0, 0x1050043

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    .line 1480
    const v0, 0x11200c8

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "device_provisioned"

    const/4 v15, 0x0

    invoke-static {v0, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v14, 0x1

    if-nez v0, :cond_19c

    .line 1488
    iput-boolean v14, v1, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 1490
    :cond_19c
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 1491
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1493
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 1494
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    .line 1496
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    sget-object v14, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v0, v1, v14}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 1498
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v14, 0x10e0077

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1501
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v14, "android.software.leanback"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e2

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v14, "android.hardware.type.television"

    .line 1502
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    goto :goto_1e2

    :cond_1e1
    goto :goto_1e3

    :cond_1e2
    :goto_1e2
    const/4 v15, 0x1

    :goto_1e3
    iput-boolean v15, v1, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 1503
    return-void
.end method

.method protected isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z
    .registers 9
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 4303
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4304
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 4306
    .local v1, "callingUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 4307
    .local v2, "isPackageSuspended":Z
    if-eqz v2, :cond_1d

    .line 4308
    const-string v3, "NotificationService"

    const-string v4, "Suppressing notification from package due to package suspended by administrator."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    .line 4311
    return v2

    .line 4313
    :cond_1d
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 4314
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/notification/RankingHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 4315
    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_42

    .line 4317
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_40

    goto :goto_42

    :cond_40
    const/4 v3, 0x0

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v3, 0x1

    .line 4318
    .local v3, "isBlocked":Z
    :goto_43
    if-eqz v3, :cond_4f

    .line 4319
    const-string v4, "NotificationService"

    const-string v5, "Suppressing notification from package by user request."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 4322
    :cond_4f
    return v3
.end method

.method protected isCallerSystemOrPhone()Z
    .registers 2

    .line 6218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    return v0
.end method

.method protected isCallingUidSystem()Z
    .registers 3

    .line 6207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6208
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method protected isUidSystemOrPhone(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 6212
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 6213
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_11

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method protected isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 21
    .param p1, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p1

    .line 4588
    move-object/from16 v2, p2

    const/4 v0, 0x1

    if-nez v1, :cond_2b

    .line 4589
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_2a

    .line 4590
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INTERRUPTIVENESS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4591
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is interruptive: new notification"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4590
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    :cond_2a
    return v0

    .line 4596
    :cond_2b
    const/4 v3, 0x0

    if-nez v2, :cond_52

    .line 4597
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_51

    .line 4598
    const-string v0, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INTERRUPTIVENESS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4599
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not interruptive: null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4598
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    :cond_51
    return v3

    .line 4604
    :cond_52
    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 4605
    .local v4, "oldN":Landroid/app/Notification;
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 4607
    .local v5, "newN":Landroid/app/Notification;
    iget-object v6, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_2e2

    iget-object v6, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v6, :cond_68

    goto/16 :goto_2e2

    .line 4617
    :cond_68
    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_98

    .line 4618
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_97

    .line 4619
    const-string v0, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INTERRUPTIVENESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4620
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not interruptive: foreground service"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4619
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    :cond_97
    return v3

    .line 4626
    :cond_98
    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_d0

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 4627
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_cf

    .line 4628
    const-string v0, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INTERRUPTIVENESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4629
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not interruptive: summary"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4628
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4631
    :cond_cf
    return v3

    .line 4634
    :cond_d0
    iget-object v6, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4635
    .local v6, "oldTitle":Ljava/lang/String;
    iget-object v7, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4636
    .local v7, "newTitle":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-nez v8, :cond_174

    .line 4637
    sget-boolean v8, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v8, :cond_173

    .line 4638
    const-string v8, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INTERRUPTIVENESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4639
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is interruptive: changed title"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4638
    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    const-string v8, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INTERRUPTIVENESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "   old title: %s (%s@0x%08x)"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v6, v13, v3

    .line 4641
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 4640
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4642
    const-string v8, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INTERRUPTIVENESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "   new title: %s (%s@0x%08x)"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v3

    .line 4643
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v10, v0

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v9

    .line 4642
    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    :cond_173
    return v0

    .line 4648
    :cond_174
    iget-object v8, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.text"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4649
    .local v8, "oldText":Ljava/lang/String;
    iget-object v11, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.text"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 4650
    .local v11, "newText":Ljava/lang/String;
    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_218

    .line 4651
    sget-boolean v12, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v12, :cond_216

    .line 4652
    const-string v12, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "INTERRUPTIVENESS: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4653
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is interruptive: changed text"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4652
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    const-string v12, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "INTERRUPTIVENESS: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "   old text: %s (%s@0x%08x)"

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v8, v15, v3

    .line 4655
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v15, v0

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v9

    .line 4654
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    const-string v0, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INTERRUPTIVENESS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "   new text: %s (%s@0x%08x)"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v3

    .line 4657
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v14, 0x1

    aput-object v3, v10, v14

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v9

    .line 4656
    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    :cond_216
    const/4 v0, 0x1

    return v0

    .line 4661
    :cond_218
    invoke-virtual {v4}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v0

    invoke-virtual {v5}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v9

    if-eq v0, v9, :cond_247

    .line 4662
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_245

    .line 4663
    const-string v0, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INTERRUPTIVENESS: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4664
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is interruptive: completed progress"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4663
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    :cond_245
    const/4 v0, 0x1

    return v0

    .line 4669
    :cond_247
    invoke-static {v4, v5}, Landroid/app/Notification;->areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_272

    .line 4670
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_270

    .line 4671
    const-string v0, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INTERRUPTIVENESS: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4672
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is interruptive: changed actions"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4671
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4674
    :cond_270
    const/4 v0, 0x1

    return v0

    .line 4678
    :cond_272
    :try_start_272
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4679
    .local v0, "oldB":Landroid/app/Notification$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 4682
    .local v9, "newB":Landroid/app/Notification$Builder;
    invoke-static {v0, v9}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v10

    if-eqz v10, :cond_2ad

    .line 4683
    sget-boolean v10, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v10, :cond_2ab

    .line 4684
    const-string v10, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INTERRUPTIVENESS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4685
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is interruptive: styles differ"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4684
    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    :cond_2ab
    const/4 v3, 0x1

    return v3

    .line 4691
    :cond_2ad
    invoke-static {v0, v9}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v10

    if-eqz v10, :cond_2d8

    .line 4692
    sget-boolean v10, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v10, :cond_2d6

    .line 4693
    const-string v10, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INTERRUPTIVENESS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4694
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is interruptive: remoteviews differ"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4693
    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_2d6} :catch_2d9

    .line 4696
    :cond_2d6
    const/4 v3, 0x1

    return v3

    .line 4700
    .end local v0    # "oldB":Landroid/app/Notification$Builder;
    .end local v9    # "newB":Landroid/app/Notification$Builder;
    :cond_2d8
    goto :goto_2e1

    .line 4698
    :catch_2d9
    move-exception v0

    .line 4699
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "NotificationService"

    const-string v10, "error recovering builder"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4702
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e1
    return v3

    .line 4608
    .end local v6    # "oldTitle":Ljava/lang/String;
    .end local v7    # "newTitle":Ljava/lang/String;
    .end local v8    # "oldText":Ljava/lang/String;
    .end local v11    # "newText":Ljava/lang/String;
    :cond_2e2
    :goto_2e2
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_305

    .line 4609
    const-string v0, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INTERRUPTIVENESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4610
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not interruptive: no extras"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4609
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    :cond_305
    return v3
.end method

.method keepProcessAliveIfNeededLocked(I)V
    .registers 9
    .param p1, "pid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5217
    const/4 v0, 0x0

    .line 5218
    .local v0, "toastCount":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 5219
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5220
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .line 5220
    .local v0, "i":I
    .local v4, "toastCount":I
    :goto_a
    if-ge v0, v2, :cond_1b

    .line 5221
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5222
    .local v5, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v6, v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v6, p1, :cond_18

    .line 5223
    add-int/lit8 v4, v4, 0x1

    .line 5220
    .end local v5    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5227
    .end local v0    # "i":I
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_23

    const/4 v3, 0x1

    nop

    :cond_23
    const-string/jumbo v6, "toast"

    invoke-interface {v0, v5, p1, v3, v6}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2a

    .line 5230
    goto :goto_2b

    .line 5228
    :catch_2a
    move-exception v0

    .line 5231
    :goto_2b
    return-void
.end method

.method protected logRecentLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4711
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_5

    .line 4712
    return-void

    .line 4714
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRecentApps:Landroid/util/ArrayMap;

    .line 4715
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4716
    .local v0, "recentAppsForUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotifyingApp;>;"
    new-instance v1, Landroid/service/notification/NotifyingApp;

    invoke-direct {v1}, Landroid/service/notification/NotifyingApp;-><init>()V

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4717
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/NotifyingApp;->setPackage(Ljava/lang/String;)Landroid/service/notification/NotifyingApp;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4718
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/NotifyingApp;->setUid(I)Landroid/service/notification/NotifyingApp;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4719
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/service/notification/NotifyingApp;->setLastNotified(J)Landroid/service/notification/NotifyingApp;

    move-result-object v1

    .line 4721
    .local v1, "na":Landroid/service/notification/NotifyingApp;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_48
    if-ltz v2, :cond_6f

    .line 4722
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotifyingApp;

    .line 4723
    .local v3, "naExisting":Landroid/service/notification/NotifyingApp;
    invoke-virtual {v1}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 4724
    invoke-virtual {v1}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result v4

    invoke-virtual {v3}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result v5

    if-ne v4, v5, :cond_6c

    .line 4725
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4726
    goto :goto_6f

    .line 4721
    .end local v3    # "naExisting":Landroid/service/notification/NotifyingApp;
    :cond_6c
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .line 4730
    .end local v2    # "i":I
    :cond_6f
    :goto_6f
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4731
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_83

    .line 4732
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4734
    :cond_83
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRecentApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4735
    return-void
.end method

.method protected maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 1950
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasRecordedInterruption()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1951
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1952
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1953
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v3

    .line 1951
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1954
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->logRecentLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 1955
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecordedInterruption(Z)V

    .line 1957
    :cond_30
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 1625
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2f

    .line 1627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1630
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1631
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1632
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1633
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    goto :goto_47

    .line 1634
    :cond_2f
    const/16 v0, 0x258

    if-ne p1, v0, :cond_47

    .line 1637
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 1638
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 1639
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onBootPhaseAppsCanStart()V

    .line 1640
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    .line 1642
    :cond_47
    :goto_47
    return-void
.end method

.method public onStart()V
    .registers 24

    .line 1507
    move-object/from16 v14, p0

    new-instance v15, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$8;

    invoke-direct {v1, v14}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v2, v14, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v15, v0, v1, v2}, Lcom/android/server/notification/SnoozeHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 1523
    .local v15, "snoozeHelper":Lcom/android/server/notification/SnoozeHelper;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 1525
    .local v13, "systemDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    .line 1526
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-class v0, Lcom/android/server/lights/LightsManager;

    .line 1527
    invoke-virtual {v14, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/lights/LightsManager;

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1528
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-direct {v11, v14, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/pm/IPackageManager;)V

    new-instance v12, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 1529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v4, v14, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 1530
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    move-object v0, v12

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/ConditionProviders;

    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v14, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v1, Lcom/android/server/notification/NotificationUsageStats;

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "notification_policy.xml"

    invoke-direct {v3, v13, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "notification-policy"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1534
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/app/ActivityManager;

    .line 1535
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;

    move-result-object v19

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v20

    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1536
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/app/usage/UsageStatsManagerInternal;

    const-class v3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1537
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1525
    const/4 v3, 0x0

    move-object v6, v14

    move-object v4, v13

    move-object v13, v0

    .line 1525
    .end local v13    # "systemDir":Ljava/io/File;
    .local v4, "systemDir":Ljava/io/File;
    move-object v0, v14

    move-object v14, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v6 .. v22}, Lcom/android/server/notification/NotificationManagerService;->init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;)V

    .line 1540
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1541
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1542
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1543
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1544
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1545
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1546
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1547
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1548
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1549
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1550
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1553
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1554
    .local v2, "pkgFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1555
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1556
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1557
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1558
    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1563
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1564
    .local v3, "suspendedPkgFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1565
    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1569
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v5

    .line 1570
    .local v19, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v16

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1573
    new-instance v5, Landroid/content/IntentFilter;

    sget-object v6, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v5, "timeoutFilter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "timeout"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1577
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.os.action.SETTING_RESTORED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1578
    .local v6, "settingsRestoredFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1580
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v7, "localeChangedFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1583
    const-string/jumbo v8, "notification"

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1585
    const-class v8, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1586
    return-void
.end method

.method protected playInCallNotification()V
    .registers 2

    .line 5057
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5077
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$12;->start()V

    .line 5078
    return-void
.end method

.method protected readDefaultApprovedServices(I)V
    .registers 13
    .param p1, "userId"    # I

    .line 467
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "defaultListenerAccess":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 471
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1b
    if-ge v5, v4, :cond_47

    aget-object v6, v3, v5

    .line 473
    .local v6, "whitelisted":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/high16 v8, 0xc0000

    .line 474
    invoke-virtual {v7, v6, v8, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v7

    .line 477
    .local v7, "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 479
    .local v9, "cn":Landroid/content/ComponentName;
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v10

    invoke-interface {v10, v9, p1, v2}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f

    .line 483
    goto :goto_43

    .line 481
    :catch_3f
    move-exception v10

    .line 482
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    .line 484
    .end local v9    # "cn":Landroid/content/ComponentName;
    .end local v10    # "e":Landroid/os/RemoteException;
    :goto_43
    goto :goto_2b

    .line 471
    .end local v6    # "whitelisted":Ljava/lang/String;
    .end local v7    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 488
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "defaultDndAccess":Ljava/lang/String;
    if-eqz v0, :cond_72

    .line 492
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_5f
    if-ge v1, v5, :cond_72

    aget-object v6, v4, v1

    .line 494
    .restart local v6    # "whitelisted":Ljava/lang/String;
    :try_start_63
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v7

    invoke-interface {v7, v6, v2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6a} :catch_6b

    .line 497
    goto :goto_6f

    .line 495
    :catch_6b
    move-exception v7

    .line 496
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 492
    .end local v6    # "whitelisted":Ljava/lang/String;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 501
    :cond_72
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->readDefaultAssistant(I)V

    .line 502
    return-void
.end method

.method protected readDefaultAssistant(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 505
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "defaultAssistantAccess":Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 510
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/high16 v2, 0xc0000

    .line 511
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    .line 514
    .local v1, "approvedAssistants":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 516
    .local v3, "cn":Landroid/content/ComponentName;
    :try_start_29
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v3, p1, v5}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_31} :catch_32

    .line 520
    goto :goto_36

    .line 518
    :catch_32
    move-exception v4

    .line 519
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 521
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_36
    goto :goto_1d

    .line 523
    .end local v1    # "approvedAssistants":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_37
    return-void
.end method

.method readPolicyXml(Ljava/io/InputStream;Z)V
    .registers 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 528
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 529
    const-string/jumbo v1, "notification-policy"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, "migratedManagedServices":Z
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 532
    .local v2, "outerDepth":I
    :cond_18
    :goto_18
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 533
    const-string/jumbo v3, "zen"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 534
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_43

    .line 535
    :cond_31
    const-string/jumbo v3, "ranking"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 536
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 538
    :cond_43
    :goto_43
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 539
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/function/Predicate;)V

    .line 540
    const/4 v1, 0x1

    goto :goto_18

    .line 541
    :cond_5e
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 542
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/function/Predicate;)V

    .line 543
    const/4 v1, 0x1

    goto :goto_18

    .line 544
    :cond_79
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 545
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/notification/ConditionProviders;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/function/Predicate;)V

    .line 546
    const/4 v1, 0x1

    goto :goto_18

    .line 550
    :cond_94
    if-nez v1, :cond_a8

    .line 551
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->migrateToXml()V

    .line 552
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->migrateToXml()V

    .line 553
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3}, Lcom/android/server/notification/ConditionProviders;->migrateToXml()V

    .line 554
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 557
    :cond_a8
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->ensureAssistant()V

    .line 558
    return-void
.end method

.method removeAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 3622
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 3623
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_b

    .line 3624
    return-void

    .line 3626
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 3627
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 3628
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 3629
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 3631
    :cond_1f
    return-void
.end method

.method protected reportSeen(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 1876
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1877
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    .line 1876
    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 1879
    return-void
.end method

.method protected reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 1964
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1965
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    .line 1964
    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 1967
    return-void
.end method

.method scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4789
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_60

    .line 4790
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "timeout"

    .line 4793
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 4794
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 4793
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 4795
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "key"

    .line 4796
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 4790
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4798
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 4799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 4798
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 4801
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_60
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .line 5476
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5477
    return-void

    .line 5480
    :cond_9
    const/16 v0, 0x40

    .line 5481
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 5482
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5483
    const-class v1, Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 5484
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 5485
    iget-object v1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 5486
    .local v1, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 5487
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5490
    :cond_2d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5491
    return-void
.end method

.method setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2
    .param p1, "am"    # Landroid/view/accessibility/AccessibilityManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1368
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1369
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "audioMananger"    # Landroid/media/AudioManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1259
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1260
    return-void
.end method

.method setFallbackVibrationPattern([J)V
    .registers 2
    .param p1, "vibrationPattern"    # [J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1338
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1339
    return-void
.end method

.method setHandler(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1333
    sput-object p1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1334
    return-void
.end method

.method setIsTelevision(Z)V
    .registers 2
    .param p1, "isTelevision"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1358
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 1359
    return-void
.end method

.method setLights(Lcom/android/server/lights/Light;)V
    .registers 3
    .param p1, "light"    # Lcom/android/server/lights/Light;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1269
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1270
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    .line 1272
    return-void
.end method

.method setPackageManager(Landroid/content/pm/IPackageManager;)V
    .registers 2
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1343
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1344
    return-void
.end method

.method setRankingHandler(Lcom/android/server/notification/RankingHandler;)V
    .registers 2
    .param p1, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1353
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1354
    return-void
.end method

.method setRankingHelper(Lcom/android/server/notification/RankingHelper;)V
    .registers 2
    .param p1, "rankingHelper"    # Lcom/android/server/notification/RankingHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1348
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1349
    return-void
.end method

.method setScreenOn(Z)V
    .registers 2
    .param p1, "on"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1276
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 1277
    return-void
.end method

.method setSystemReady(Z)V
    .registers 2
    .param p1, "systemReady"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1328
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1329
    return-void
.end method

.method setUsageStats(Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 2
    .param p1, "us"    # Lcom/android/server/notification/NotificationUsageStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1363
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1364
    return-void
.end method

.method setVibrator(Landroid/os/Vibrator;)V
    .registers 2
    .param p1, "vibrator"    # Landroid/os/Vibrator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1264
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1265
    return-void
.end method

.method shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 4929
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 4930
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_10

    .line 4932
    return v2

    .line 4936
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v1

    .line 4937
    .local v1, "disableEffects":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 4938
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 4939
    return v2

    .line 4943
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    if-eqz v3, :cond_25

    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v3, :cond_25

    .line 4945
    return v2

    .line 4949
    :cond_25
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 4950
    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 4951
    return v2

    .line 4956
    :cond_34
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4957
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 4958
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Muting recently noisy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4959
    return v2

    .line 4962
    :cond_5d
    const/4 v2, 0x0

    return v2
.end method

.method showNextToastLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5082
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5083
    .local v0, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_9
    if-eqz v0, :cond_85

    .line 5084
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_31

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    :cond_31
    :try_start_31
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/app/ITransientNotification;->show(Landroid/os/IBinder;)V

    .line 5087
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_3c

    .line 5088
    return-void

    .line 5089
    :catch_3c
    move-exception v2

    .line 5090
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5093
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 5094
    .local v3, "index":I
    if-ltz v3, :cond_6c

    .line 5095
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5097
    :cond_6c
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 5098
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_83

    .line 5099
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    goto :goto_84

    .line 5101
    :cond_83
    const/4 v0, 0x0

    .line 5103
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "index":I
    :goto_84
    goto :goto_9

    .line 5105
    :cond_85
    return-void
.end method

.method protected simulatePackageSuspendBroadcast(ZLjava/lang/String;)V
    .registers 8
    .param p1, "suspend"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7093
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7094
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.changed_package_list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7097
    if-eqz p1, :cond_15

    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_17

    .line 7098
    :cond_15
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 7099
    .local v1, "action":Ljava/lang/String;
    :goto_17
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7100
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7102
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7103
    return-void
.end method

.method snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "snoozeCriterionId"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 5940
    if-nez p5, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 5941
    .local v0, "listenerName":Ljava/lang/String;
    :goto_a
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_12

    if-eqz p4, :cond_14

    :cond_12
    if-nez p1, :cond_15

    .line 5942
    :cond_14
    return-void

    .line 5945
    :cond_15
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_38

    .line 5946
    const-string v1, "NotificationService"

    const-string/jumbo v2, "snooze event(%s, %d, %s, %s)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5950
    :cond_38
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5951
    return-void
.end method

.method protected unhideNotificationsForPackages([Ljava/lang/String;)V
    .registers 10
    .param p1, "pkgs"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6184
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6185
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6186
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6187
    .local v2, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6188
    .local v3, "numNotifications":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_14
    if-ge v5, v3, :cond_33

    .line 6189
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 6190
    .local v6, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 6191
    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 6192
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6188
    .end local v6    # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 6196
    .end local v5    # "i":I
    :cond_33
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyUnhiddenLocked(Ljava/util/List;)V

    .line 6197
    .end local v1    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3    # "numNotifications":I
    monitor-exit v0

    .line 6198
    return-void

    .line 6197
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 5954
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 5955
    .local v0, "listenerName":Ljava/lang/String;
    :goto_a
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_23

    .line 5956
    const-string v1, "NotificationService"

    const-string/jumbo v2, "unsnooze event(%s, %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    :cond_23
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;)V

    .line 5959
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 5960
    return-void
.end method

.method updateLightsLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 6045
    const/4 v0, 0x0

    .line 6046
    .local v0, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_42

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    .line 6047
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6048
    .local v1, "owner":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 6049
    if-nez v0, :cond_41

    .line 6050
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LED Notification does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6051
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6053
    .end local v1    # "owner":Ljava/lang/String;
    :cond_41
    goto :goto_1

    .line 6059
    :cond_42
    if-eqz v0, :cond_71

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v2, :cond_71

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-nez v2, :cond_71

    .line 6061
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    const-string v4, "_led"

    .line 6060
    invoke-static {v2, v3, v4}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    goto :goto_71

    .line 6064
    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v2

    .line 6065
    .local v2, "light":Lcom/android/server/notification/NotificationRecord$Light;
    if-eqz v2, :cond_76

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v3, :cond_76

    .line 6067
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    iget v4, v2, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v5, v2, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v6, v2, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .end local v2    # "light":Lcom/android/server/notification/NotificationRecord$Light;
    goto :goto_76

    .line 6062
    :cond_71
    :goto_71
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 6071
    :cond_76
    :goto_76
    return-void
.end method

.method updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .registers 21
    .param p1, "newRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "oldRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 5640
    if-eqz v8, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v10, v0

    .line 5641
    .local v10, "key":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_2c

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": updating permissions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5643
    :cond_2c
    const/4 v1, 0x0

    if-eqz v8, :cond_34

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_35

    :cond_34
    move-object v0, v1

    :goto_35
    move-object v11, v0

    .line 5644
    .local v11, "newUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-eqz v9, :cond_3d

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_3e

    :cond_3d
    move-object v0, v1

    :goto_3e
    move-object v12, v0

    .line 5647
    .local v12, "oldUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-nez v11, :cond_44

    if-nez v12, :cond_44

    .line 5648
    return-void

    .line 5652
    :cond_44
    const/4 v0, 0x0

    .line 5653
    .local v0, "permissionOwner":Landroid/os/IBinder;
    if-eqz v8, :cond_4b

    if-nez v0, :cond_4b

    .line 5654
    iget-object v0, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 5656
    :cond_4b
    if-eqz v9, :cond_51

    if-nez v0, :cond_51

    .line 5657
    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 5661
    .end local v0    # "permissionOwner":Landroid/os/IBinder;
    .local v2, "permissionOwner":Landroid/os/IBinder;
    :cond_51
    move-object v2, v0

    if-eqz v11, :cond_8a

    if-nez v2, :cond_8a

    .line 5663
    :try_start_56
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_70

    const-string v0, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": creating owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5664
    :cond_70
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_87} :catch_89

    move-object v2, v0

    .line 5667
    goto :goto_8a

    .line 5665
    :catch_89
    move-exception v0

    .line 5671
    :cond_8a
    :goto_8a
    if-nez v11, :cond_c9

    if-eqz v2, :cond_c9

    .line 5672
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5674
    .local v3, "ident":J
    :try_start_92
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_ac

    const-string v0, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": destroying owner"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5675
    :cond_ac
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    const/4 v5, -0x1

    .line 5676
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 5675
    invoke-interface {v0, v2, v1, v5, v6}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_ba} :catch_c4
    .catchall {:try_start_92 .. :try_end_ba} :catchall_bf

    .line 5677
    const/4 v0, 0x0

    .line 5681
    .end local v2    # "permissionOwner":Landroid/os/IBinder;
    .restart local v0    # "permissionOwner":Landroid/os/IBinder;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5682
    goto :goto_ca

    .line 5681
    .end local v0    # "permissionOwner":Landroid/os/IBinder;
    .restart local v2    # "permissionOwner":Landroid/os/IBinder;
    :catchall_bf
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 5678
    :catch_c4
    move-exception v0

    .line 5681
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5682
    nop

    .line 5686
    .end local v3    # "ident":J
    :cond_c9
    move-object v0, v2

    .end local v2    # "permissionOwner":Landroid/os/IBinder;
    .restart local v0    # "permissionOwner":Landroid/os/IBinder;
    :goto_ca
    const/4 v13, 0x0

    if-eqz v11, :cond_114

    if-eqz v0, :cond_114

    .line 5687
    move v1, v13

    .local v1, "i":I
    :goto_d0
    move v14, v1

    .end local v1    # "i":I
    .local v14, "i":I
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v14, v1, :cond_114

    .line 5688
    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/net/Uri;

    .line 5689
    .local v15, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_e6

    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_111

    .line 5690
    :cond_e6
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_103

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": granting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    :cond_103
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v4

    move-object v1, v7

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    .line 5687
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_111
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "i":I
    .restart local v1    # "i":I
    goto :goto_d0

    .line 5698
    .end local v1    # "i":I
    :cond_114
    if-eqz v12, :cond_155

    if-eqz v0, :cond_155

    .line 5699
    nop

    .local v13, "i":I
    :goto_119
    move v1, v13

    .end local v13    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_155

    .line 5700
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 5701
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_12e

    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_152

    .line 5702
    :cond_12e
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_14b

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": revoking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5703
    :cond_14b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    invoke-direct {v7, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 5699
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_152
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "i":I
    .restart local v13    # "i":I
    goto :goto_119

    .line 5708
    .end local v13    # "i":I
    :cond_155
    if-eqz v8, :cond_159

    .line 5709
    iput-object v0, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 5711
    :cond_159
    return-void
.end method
