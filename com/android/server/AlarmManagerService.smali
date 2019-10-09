.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$ShellCmd;,
        Lcom/android/server/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/AlarmManagerService$AppStandbyTracker;,
        Lcom/android/server/AlarmManagerService$UidObserver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$LocalService;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$Constants;,
        Lcom/android/server/AlarmManagerService$Stats;,
        Lcom/android/server/AlarmManagerService$IdleDispatchEntry;
    }
.end annotation


# static fields
.field static final ACTIVE_INDEX:I = 0x0

.field static final ALARM_EVENT:I = 0x1

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_BG_LIMIT:Z = false

.field static final DEBUG_LISTENER_CALLBACK:Z = false

.field static final DEBUG_STANDBY:Z = false

.field static final DEBUG_VALIDATE:Z = false

.field static final DEBUG_WAKELOCK:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final FREQUENT_INDEX:I = 0x2

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field static final NEVER_INDEX:I = 0x4

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RARE_INDEX:I = 0x3

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final SYSTEM_UI_SELF_PERMISSION:Ljava/lang/String; = "android.permission.systemui.IDENTITY"

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z = false

.field static final WORKING_INDEX:I = 0x1

.field static final localLOGV:Z = false

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAppOps:Landroid/app/AppOpsManager;

.field private mAppStandbyParole:Z

.field private mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private final mBackgroundIntent:Landroid/content/Intent;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field final mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field final mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

.field final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field mInteractive:Z

.field mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

.field private mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field private mLastTickAdded:J

.field private mLastTickIssued:J

.field private mLastTickReceived:J

.field private mLastTickRemoved:J

.field private mLastTickSet:J

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field private mLastTrigger:J

.field mLastWakeLockUnimportantForLogging:Z

.field private mLastWakeup:J

.field private mLastWakeupSet:J

.field private mListenerCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mListenerFinishCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field private mMmBooterDelivered:I

.field private mMmBooterXmsfDelivered:I

.field private mMmDelivered:I

.field private mMmXmsfDelivered:I

.field mNativeData:J

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field mPendingBackgroundAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field private mQqDelivered:I

.field private mQqXmsfDelivered:I

.field mRandom:Ljava/util/Random;

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSendFinishCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field mSystemUiUid:I

.field mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field final mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXmsfDelivered:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 153
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 739
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 749
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 162
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 188
    new-instance v1, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 192
    new-instance v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 207
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mMmDelivered:I

    .line 208
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mMmBooterDelivered:I

    .line 209
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mQqDelivered:I

    .line 210
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mXmsfDelivered:I

    .line 211
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mMmXmsfDelivered:I

    .line 212
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mMmBooterXmsfDelivered:I

    .line 213
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mQqXmsfDelivered:I

    .line 235
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 241
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 258
    new-instance v1, Lcom/android/internal/util/StatLogger;

    const-string v2, "REBATCH_ALL_ALARMS"

    const-string v3, "REORDER_ALARMS_FOR_STANDBY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 268
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 270
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 272
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 277
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 282
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;

    .line 485
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 486
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 500
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 501
    const-wide/32 v1, 0x5265c00

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 676
    new-instance v1, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 744
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 745
    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 746
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1307
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1310
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1311
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1312
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1765
    new-instance v2, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 4060
    new-instance v2, Lcom/android/server/AlarmManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$5;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    .line 4120
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    .line 4122
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    .line 4124
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    .line 4126
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    .line 750
    new-instance v0, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 752
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v2, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 753
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 119
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    return-wide p1
.end method

.method static synthetic access$1002(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 119
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/server/AlarmManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 119
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/AlarmManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 119
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;JI)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 119
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2008(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 119
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    return-wide p1
.end method

.method static synthetic access$2108(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    return v0
.end method

.method static synthetic access$2208(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 119
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickIssued:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2508(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 119
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;
    .param p2, "x2"    # Landroid/app/IAlarmListener;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;J)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .registers 6
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .line 781
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 782
    .local v0, "index":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_e

    .line 783
    rsub-int/lit8 v3, v0, 0x0

    add-int/lit8 v0, v3, -0x1

    .line 785
    :cond_e
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 786
    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    return v1
.end method

.method private adjustDeliveryTimeBasedOnStandbyBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 21
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p0

    .line 1600
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 1601
    return v3

    .line 1603
    :cond_c
    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_23

    .line 1604
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_22

    .line 1606
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1607
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1608
    return v4

    .line 1610
    :cond_22
    return v3

    .line 1612
    :cond_23
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1613
    .local v5, "oldWhenElapsed":J
    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1615
    .local v7, "oldMaxWhenElapsed":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 1616
    .local v2, "sourcePackage":Ljava/lang/String;
    iget v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1617
    .local v9, "sourceUserId":I
    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1617
    invoke-virtual {v10, v2, v9, v11, v12}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v10

    .line 1620
    .local v10, "standbyBucket":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 1621
    .local v11, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1622
    .local v15, "lastElapsed":J
    cmp-long v12, v15, v13

    if-lez v12, :cond_6f

    .line 1623
    invoke-direct {v0, v10}, Lcom/android/server/AlarmManagerService;->getMinDelayForBucketLocked(I)J

    move-result-wide v12

    add-long/2addr v12, v15

    .line 1624
    .local v12, "minElapsed":J
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v3, v3, v12

    if-gez v3, :cond_67

    .line 1625
    iput-wide v12, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v12, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_6f

    .line 1629
    :cond_67
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1630
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1633
    .end local v12    # "minElapsed":J
    :cond_6f
    :goto_6f
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_7f

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v7, v3

    if-eqz v3, :cond_7c

    goto :goto_7f

    :cond_7c
    const/16 v17, 0x0

    goto :goto_81

    :cond_7f
    :goto_7f
    const/16 v17, 0x1

    :goto_81
    return v17
.end method

.method static clampPositive(J)J
    .registers 4
    .param p0, "val"    # J

    .line 981
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    move-wide v0, p0

    goto :goto_d

    :cond_8
    const-wide v0, 0x7fffffffffffffffL

    :goto_d
    return-wide v0
.end method

.method private native close(J)V
.end method

.method static convertToElapsed(JI)J
    .registers 8
    .param p0, "when"    # J
    .param p2, "type"    # I

    .line 756
    const/4 v0, 0x1

    if-eq p2, v0, :cond_8

    if-nez p2, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    nop

    .line 757
    .local v0, "isRtc":Z
    :cond_8
    :goto_8
    if-eqz v0, :cond_14

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sub-long/2addr p0, v1

    .line 760
    :cond_14
    return-wide p0
.end method

.method private deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 42
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 1066
    move-wide/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1067
    .local v10, "N":I
    const/4 v0, 0x0

    .line 1068
    .local v0, "hasWakeup":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    move v11, v1

    .end local v1    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_b4

    .line 1069
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1070
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v1, :cond_1b

    .line 1071
    const/4 v0, 0x1

    .line 1073
    .end local v0    # "hasWakeup":Z
    .local v21, "hasWakeup":Z
    :cond_1b
    move/from16 v21, v0

    const/4 v0, 0x1

    iput v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1076
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a2

    .line 1077
    iget v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v0, v0

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v2, v12, v2

    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1079
    iget v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v0, v0

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v22, v0, v2

    .line 1080
    .local v22, "delta":J
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v24, v0, v22

    .line 1081
    .local v24, "nextElapsed":J
    iget v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v16, v0, v22

    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1082
    move-wide v0, v12

    move-wide/from16 v18, v2

    move-wide/from16 v2, v24

    move-wide/from16 v26, v4

    move-wide/from16 v4, v18

    invoke-static/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v18

    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v9, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/16 v20, 0x0

    const/16 v28, 0x0

    iget v7, v8, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    const/16 v29, 0x1

    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 1081
    move-object/from16 v30, v0

    move-object v0, v15

    move/from16 v31, v1

    move v1, v6

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-wide/from16 v2, v16

    move-wide/from16 v16, v4

    move-wide/from16 v4, v24

    move/from16 v34, v7

    move-wide/from16 v6, v26

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-wide/from16 v8, v18

    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v26, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move/from16 v35, v10

    move/from16 v36, v11

    move-wide/from16 v10, v16

    .end local v10    # "N":I
    .end local v11    # "i":I
    .local v35, "N":I
    .local v36, "i":I
    move-object/from16 v12, v27

    move-object/from16 v13, v20

    move-object/from16 v14, v28

    move/from16 v15, v34

    move/from16 v16, v29

    move-object/from16 v17, v32

    move-object/from16 v18, v33

    move/from16 v19, v31

    move-object/from16 v20, v30

    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .end local v22    # "delta":J
    .end local v24    # "nextElapsed":J
    .end local v26    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_a6

    .line 1068
    .end local v35    # "N":I
    .end local v36    # "i":I
    .restart local v10    # "N":I
    .restart local v11    # "i":I
    :cond_a2
    move/from16 v35, v10

    move/from16 v36, v11

    .end local v10    # "N":I
    .end local v11    # "i":I
    .restart local v35    # "N":I
    .restart local v36    # "i":I
    :goto_a6
    add-int/lit8 v1, v36, 0x1

    .end local v36    # "i":I
    .restart local v1    # "i":I
    move/from16 v0, v21

    move/from16 v10, v35

    move-wide/from16 v12, p2

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_c

    .line 1088
    .end local v1    # "i":I
    .end local v21    # "hasWakeup":Z
    .end local v35    # "N":I
    .restart local v0    # "hasWakeup":Z
    .restart local v10    # "N":I
    :cond_b4
    move/from16 v35, v10

    .end local v10    # "N":I
    .restart local v35    # "N":I
    if-nez v0, :cond_eb

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 1090
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_da

    .line 1091
    iput-wide v2, v1, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1092
    nop

    .line 1093
    invoke-virtual {v1, v2, v3}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1095
    :cond_da
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1096
    iget v4, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_11f

    .line 1102
    :cond_eb
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    :cond_ef
    move-object/from16 v5, p1

    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_114

    .line 1103
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1104
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v6, v2, v6

    .line 1105
    .local v6, "thisDelayTime":J
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v8, v6

    iput-wide v8, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1106
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_10f

    .line 1107
    iput-wide v6, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1109
    :cond_10f
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1111
    .end local v6    # "thisDelayTime":J
    :cond_114
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1112
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1113
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1115
    :goto_11f
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 22
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    .line 3069
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    if-ltz v10, :cond_4f

    .line 3070
    move-object v11, p1

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3071
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v13

    .line 3072
    .local v13, "label":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3073
    const-string v0, ": "

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v12

    move-object v1, v8

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3069
    .end local v12    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13    # "label":Ljava/lang/String;
    add-int/lit8 v0, v10, -0x1

    .end local v10    # "i":I
    .restart local v0    # "i":I
    goto :goto_9

    .line 3076
    .end local v0    # "i":I
    :cond_4f
    move-object v11, p1

    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowELAPSED"    # J
    .param p6, "nowRTC"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    .line 3049
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    if-ltz v10, :cond_4b

    .line 3050
    move-object v11, p1

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3051
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v13, p3

    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3052
    const-string v0, ": "

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v12

    move-object v1, v8

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3049
    .end local v12    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v0, v10, -0x1

    .end local v10    # "i":I
    .restart local v0    # "i":I
    goto :goto_9

    .line 3055
    .end local v0    # "i":I
    :cond_4b
    move-object v11, p1

    move-object/from16 v13, p3

    return-void
.end method

.method static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1044
    .local p0, "pendingAlarms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;>;"
    .local p1, "unrestrictedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "isBackgroundRestricted":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidIndex":I
    :goto_6
    if-ltz v0, :cond_3c

    .line 1045
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1046
    .local v1, "uid":I
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1048
    .local v2, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "alarmIndex":I
    :goto_18
    if-ltz v3, :cond_30

    .line 1049
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1051
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1052
    goto :goto_2d

    .line 1055
    :cond_27
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1048
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 1059
    .end local v3    # "alarmIndex":I
    :cond_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_39

    .line 1060
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1044
    .end local v1    # "uid":I
    .end local v2    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1063
    .end local v0    # "uidIndex":I
    :cond_3c
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .registers 5

    .line 2561
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2562
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 2563
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 2564
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2565
    return-object v2

    .line 2562
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2568
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .line 2705
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "EHm"

    goto :goto_b

    :cond_9
    const-string v0, "Ehma"

    .line 2706
    .local v0, "skeleton":Ljava/lang/String;
    :goto_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2707
    .local v1, "pattern":Ljava/lang/String;
    if-nez p1, :cond_18

    const-string v2, ""

    goto :goto_24

    .line 2708
    :cond_18
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2707
    :goto_24
    return-object v2
.end method

.method static fuzzForDuration(J)I
    .registers 4
    .param p0, "duration"    # J

    .line 3454
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 3457
    long-to-int v0, p0

    return v0

    .line 3458
    :cond_9
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_14

    .line 3460
    const v0, 0xdbba0

    return v0

    .line 3463
    :cond_14
    const v0, 0x1b7740

    return v0
.end method

.method static getAlarmCount(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)I"
        }
    .end annotation

    .line 819
    .local p0, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v0, 0x0

    .line 821
    .local v0, "ret":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 822
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_16

    .line 823
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 822
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 825
    .end local v2    # "i":I
    :cond_16
    return v0
.end method

.method private getMinDelayForBucketLocked(I)J
    .registers 5
    .param p1, "bucket"    # I

    .line 1585
    const/16 v0, 0x32

    if-ne p1, v0, :cond_6

    const/4 v0, 0x4

    .local v0, "index":I
    :goto_5
    goto :goto_19

    .line 1586
    .end local v0    # "index":I
    :cond_6
    const/16 v0, 0x1e

    if-le p1, v0, :cond_c

    const/4 v0, 0x3

    goto :goto_5

    .line 1587
    :cond_c
    const/16 v0, 0x14

    if-le p1, v0, :cond_12

    const/4 v0, 0x2

    goto :goto_5

    .line 1588
    :cond_12
    const/16 v0, 0xa

    if-le p1, v0, :cond_18

    const/4 v0, 0x1

    goto :goto_5

    .line 1589
    :cond_18
    const/4 v0, 0x0

    .line 1591
    .restart local v0    # "index":I
    :goto_19
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_MIN_DELAYS:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 4102
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4103
    .local v0, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v0, :cond_15

    .line 4104
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 4105
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4107
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 4108
    .local v1, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v1, :cond_26

    .line 4109
    new-instance v2, Lcom/android/server/AlarmManagerService$BroadcastStats;

    invoke-direct {v2, p1, p2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 4110
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4112
    :cond_26
    return-object v1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 4096
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 4097
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 4098
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v2

    return-object v2
.end method

.method private getWhileIdleMinIntervalLocked(I)J
    .registers 6
    .param p1, "uid"    # I

    .line 3109
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 3110
    .local v0, "dozing":Z
    :goto_9
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 3111
    invoke-virtual {v3}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 3112
    .local v1, "ebs":Z
    :cond_17
    if-nez v0, :cond_20

    if-nez v1, :cond_20

    .line 3113
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 3115
    :cond_20
    if-eqz v0, :cond_27

    .line 3116
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2

    .line 3118
    :cond_27
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3121
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 3123
    :cond_34
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2
.end method

.method private native init()J
.end method

.method private insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 790
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_10

    .line 791
    :cond_8
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v0

    .line 793
    .local v0, "whichBatch":I
    :goto_10
    if-gez v0, :cond_1d

    .line 794
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_35

    .line 796
    :cond_1d
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 797
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 800
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 801
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 804
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_35
    :goto_35
    return-void
.end method

.method private isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3079
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 3080
    .local v0, "exemptOnBatterySaver":Z
    :goto_b
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_10

    .line 3082
    return v2

    .line 3084
    :cond_10
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_26

    .line 3085
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3087
    return v2

    .line 3089
    :cond_1d
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3091
    const/4 v0, 0x1

    .line 3094
    :cond_26
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 3095
    .local v3, "sourcePackage":Ljava/lang/String;
    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3096
    .local v4, "sourceUid":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 3097
    invoke-virtual {v5, v4, v3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_38

    .line 3096
    :cond_37
    move v1, v2

    :goto_38
    return v1
.end method

.method private isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3549
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_15

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 3058
    packed-switch p0, :pswitch_data_12

    .line 3064
    const-string v0, "--unknown--"

    return-object v0

    .line 3061
    :pswitch_6
    const-string v0, "ELAPSED"

    return-object v0

    .line 3062
    :pswitch_9
    const-string v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 3059
    :pswitch_c
    const-string v0, "RTC"

    return-object v0

    .line 3060
    :pswitch_f
    const-string v0, "RTC_WAKEUP"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static synthetic lambda$nSJw2tKfoL3YIrKDtszoL44jcSM(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeForStoppedLocked$3(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 4
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 2896
    :try_start_0
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_12

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_13

    if-eqz v0, :cond_12

    .line 2898
    const/4 v0, 0x1

    return v0

    .line 2900
    :cond_12
    goto :goto_14

    :catch_13
    move-exception v0

    .line 2901
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$removeLocked$0(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 4
    .param p0, "operation"    # Landroid/app/PendingIntent;
    .param p1, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p2, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 2748
    invoke-virtual {p2, p0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeLocked$1(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 2800
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$removeLocked$2(Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 2846
    invoke-virtual {p1, p0}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeUserLocked$4(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "userHandle"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 2939
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .registers 20
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    .line 2525
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2526
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2527
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2528
    .local v11, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 2529
    .local v13, "nowELAPSED":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2530
    .local v15, "NZ":I
    const/4 v3, 0x0

    .local v3, "iz":I
    :goto_1d
    move v10, v3

    .end local v3    # "iz":I
    .local v10, "iz":I
    if-ge v10, v15, :cond_5b

    .line 2531
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    .line 2532
    .local v8, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v3, "Batch "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2533
    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v5, "  "

    move-object v3, v2

    move-wide v6, v13

    move-object/from16 v16, v8

    move-wide v8, v11

    .end local v8    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    .local v16, "bz":Lcom/android/server/AlarmManagerService$Batch;
    move/from16 v17, v10

    move-object/from16 v10, p1

    .end local v10    # "iz":I
    .local v17, "iz":I
    invoke-static/range {v3 .. v10}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2534
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 2535
    const-string v3, "AlarmManager"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2530
    .end local v16    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    add-int/lit8 v3, v17, 0x1

    .end local v17    # "iz":I
    .restart local v3    # "iz":I
    goto :goto_1d

    .line 2538
    .end local v3    # "iz":I
    :cond_5b
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .registers 12
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .line 770
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_9

    .line 771
    sub-long v0, p2, p0

    goto :goto_a

    .line 772
    :cond_9
    move-wide v0, p4

    .line 773
    .local v0, "futurity":J
    :goto_a
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 774
    const-wide/16 v0, 0x0

    .line 776
    :cond_12
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v2

    return-wide v2
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 10
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;

    .line 2739
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 2744
    return-void

    .line 2747
    :cond_5
    const/4 v0, 0x0

    .line 2748
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1, p2}, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 2749
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_30

    .line 2750
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 2751
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v4, v1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2752
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2d

    .line 2753
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2749
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 2756
    .end local v2    # "i":I
    :cond_30
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_37
    if-ltz v2, :cond_4f

    .line 2757
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2759
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2756
    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_37

    .line 2762
    .end local v2    # "i":I
    :cond_4f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_56
    if-ltz v2, :cond_87

    .line 2763
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2764
    .local v4, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_65
    if-ltz v5, :cond_79

    .line 2765
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 2767
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2764
    :cond_76
    add-int/lit8 v5, v5, -0x1

    goto :goto_65

    .line 2770
    .end local v5    # "j":I
    :cond_79
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_84

    .line 2771
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2762
    .end local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_84
    add-int/lit8 v2, v2, -0x1

    goto :goto_56

    .line 2774
    .end local v2    # "i":I
    :cond_87
    if-eqz v0, :cond_b3

    .line 2778
    const/4 v2, 0x0

    .line 2779
    .local v2, "restorePending":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v5, 0x0

    if-eqz v4, :cond_9a

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 2780
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2781
    const/4 v2, 0x1

    .line 2783
    :cond_9a
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_a8

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 2784
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2786
    :cond_a8
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2787
    if-eqz v2, :cond_b0

    .line 2788
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 2790
    :cond_b0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2792
    .end local v2    # "restorePending":Z
    :cond_b3
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .registers 9

    .line 2674
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 2675
    .local v0, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2677
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2678
    :try_start_8
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2679
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .line 2679
    .local v4, "i":I
    :goto_10
    if-ge v4, v2, :cond_26

    .line 2680
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2681
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2679
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2683
    .end local v4    # "i":I
    :cond_26
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2684
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_66

    .line 2686
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2687
    .local v1, "N":I
    nop

    .line 2687
    .local v3, "i":I
    :goto_31
    move v2, v3

    .line 2687
    .end local v3    # "i":I
    .local v2, "i":I
    if-ge v2, v1, :cond_65

    .line 2688
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2689
    .local v3, "userId":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2690
    .local v4, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "next_alarm_formatted"

    .line 2692
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v3}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    .line 2690
    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2695
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2687
    .end local v3    # "userId":I
    .end local v4    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    add-int/lit8 v3, v2, 0x1

    .line 2687
    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_31

    .line 2698
    .end local v3    # "i":I
    :cond_65
    return-void

    .line 2684
    .end local v1    # "N":I
    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2
.end method

.method private native set(JIJJ)I
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .registers 43
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p14, "listenerTag"    # Ljava/lang/String;
    .param p15, "flags"    # I
    .param p16, "doValidate"    # Z
    .param p17, "workSource"    # Landroid/os/WorkSource;
    .param p18, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p19, "callingUid"    # I
    .param p20, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v15, p19

    .line 1559
    new-instance v0, Lcom/android/server/AlarmManagerService$Alarm;

    move-object v2, v0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p17

    move/from16 v18, p15

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    invoke-direct/range {v2 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    move-object v2, v0

    .line 1563
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_27
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2b} :catch_5c

    move/from16 v3, p19

    move-object/from16 v4, p20

    :try_start_2f
    invoke-interface {v0, v3, v4}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1564
    const-string v0, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not setting alarm from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- package not allowed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_58} :catch_5a

    .line 1566
    return-void

    .line 1569
    :cond_59
    goto :goto_61

    .line 1568
    :catch_5a
    move-exception v0

    goto :goto_61

    :catch_5c
    move-exception v0

    move/from16 v3, p19

    move-object/from16 v4, p20

    .line 1570
    :goto_61
    move-object/from16 v5, p12

    move-object/from16 v6, p13

    invoke-direct {v1, v5, v6}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1571
    const/4 v0, 0x0

    move/from16 v7, p16

    invoke-direct {v1, v2, v0, v7}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1572
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .registers 12
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .line 1638
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/AlarmManagerServiceInjector;->keepAlignedWithXMSF(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/ArrayList;)V

    .line 1639
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4e

    .line 1644
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_23

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    .line 1645
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1648
    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1649
    .local v0, "nowElapsed":J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result v2

    .line 1650
    .local v2, "fuzz":I
    if-lez v2, :cond_4d

    .line 1651
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v3, :cond_3b

    .line 1652
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 1654
    :cond_3b
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1655
    .local v3, "delta":I
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1663
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1666
    .end local v0    # "nowElapsed":J
    .end local v2    # "fuzz":I
    .end local v3    # "delta":I
    :cond_4d
    goto :goto_5e

    :cond_4e
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_5e

    .line 1669
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0xe

    if-nez v0, :cond_5e

    .line 1673
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    return-void

    .line 1689
    :cond_5e
    :goto_5e
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnStandbyBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1690
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1692
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_6b

    .line 1693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1696
    :cond_6b
    const/4 v0, 0x0

    .line 1698
    .local v0, "needRebatch":Z
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9f

    .line 1708
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v1, p1, :cond_9b

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_9b

    .line 1709
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setImplLocked: idle until changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_9b
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1714
    const/4 v0, 0x1

    goto :goto_ba

    .line 1715
    :cond_9f
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_ba

    .line 1716
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_ba

    .line 1717
    :cond_b3
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1721
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_ba

    .line 1722
    const/4 v0, 0x1

    .line 1727
    :cond_ba
    :goto_ba
    if-nez p2, :cond_c8

    .line 1741
    if-eqz v0, :cond_c2

    .line 1742
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1745
    :cond_c2
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1746
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1748
    :cond_c8
    return-void
.end method

.method private native setKernelTime(JJ)I
.end method

.method private native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "when"    # J

    .line 3018
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_77

    .line 3022
    cmp-long v0, p2, v2

    if-gez v0, :cond_13

    .line 3023
    const-wide/16 v0, 0x0

    .line 3024
    .local v0, "alarmSeconds":J
    const-wide/16 v2, 0x0

    .line 3027
    .local v2, "alarmNanoseconds":J
    move-wide v10, v0

    move-wide v0, v2

    goto :goto_1c

    .line 3026
    .end local v0    # "alarmSeconds":J
    .end local v2    # "alarmNanoseconds":J
    :cond_13
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    .line 3027
    .local v2, "alarmSeconds":J
    rem-long v4, p2, v0

    mul-long/2addr v4, v0

    mul-long/2addr v0, v4

    move-wide v10, v2

    .line 3030
    .end local v2    # "alarmSeconds":J
    .local v0, "alarmNanoseconds":J
    .local v10, "alarmSeconds":J
    :goto_1c
    iget-wide v3, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-object v2, p0

    move v5, p1

    move-wide v6, v10

    move-wide v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->set(JIJJ)I

    move-result v2

    .line 3031
    .local v2, "result":I
    if-eqz v2, :cond_76

    .line 3032
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3033
    .local v3, "nowElapsed":J
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to set kernel alarm, now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " @ ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "), ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    invoke-static {v2}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3033
    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    .end local v0    # "alarmNanoseconds":J
    .end local v2    # "result":I
    .end local v3    # "nowElapsed":J
    .end local v10    # "alarmSeconds":J
    :cond_76
    goto :goto_88

    .line 3039
    :cond_77
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3040
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3042
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3043
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3045
    .end local v0    # "msg":Landroid/os/Message;
    :goto_88
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .registers 15

    .line 2587
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_5

    .line 2588
    return-void

    .line 2590
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2592
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 2593
    .local v1, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2595
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2596
    .local v2, "N":I
    move v3, v0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_6e

    .line 2597
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 2598
    .local v4, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2600
    .local v5, "M":I
    move v6, v0

    .local v6, "j":I
    :goto_25
    if-ge v6, v5, :cond_6b

    .line 2601
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2602
    .local v7, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_68

    .line 2603
    iget v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2604
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2613
    .local v9, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4b

    .line 2614
    iget-object v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_68

    .line 2615
    :cond_4b
    iget-object v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 2616
    invoke-virtual {v9}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v10

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v12}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_68

    .line 2618
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2600
    .end local v7    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "userId":I
    .end local v9    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_68
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 2596
    .end local v4    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2625
    .end local v3    # "i":I
    :cond_6e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 2626
    .local v3, "NN":I
    nop

    .local v0, "i":I
    :goto_73
    if-ge v0, v3, :cond_93

    .line 2627
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2628
    .local v4, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2629
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2630
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    .line 2631
    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 2626
    .end local v4    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v5    # "userId":I
    .end local v6    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 2636
    .end local v0    # "i":I
    :cond_93
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2637
    .local v0, "NNN":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_9b
    if-ltz v4, :cond_b0

    .line 2638
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2639
    .restart local v5    # "userId":I
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_ad

    .line 2640
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 2637
    .end local v5    # "userId":I
    :cond_ad
    add-int/lit8 v4, v4, -0x1

    goto :goto_9b

    .line 2643
    .end local v4    # "i":I
    :cond_b0
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2647
    if-eqz p2, :cond_8

    .line 2652
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 2657
    :cond_8
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2660
    :goto_d
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2661
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 2662
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 2663
    return-void
.end method

.method private validateConsistencyLocked()Z
    .registers 2

    .line 2557
    const/4 v0, 0x1

    return v0
.end method

.method private native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .registers 9
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .line 808
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 809
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 810
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 811
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1e

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 812
    return v1

    .line 809
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 815
    .end local v1    # "i":I
    :cond_21
    const/4 v1, -0x1

    return v1
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 700
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_62

    .line 701
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 704
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_25

    const-string v3, "android.intent.action.TIME_TICK"

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 705
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 706
    const/4 v3, 0x0

    .local v3, "alarmPrio":I
    :goto_24
    goto :goto_2c

    .line 707
    .end local v3    # "alarmPrio":I
    :cond_25
    iget-boolean v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v3, :cond_2b

    .line 708
    const/4 v3, 0x1

    goto :goto_24

    .line 710
    :cond_2b
    const/4 v3, 0x2

    .line 713
    .restart local v3    # "alarmPrio":I
    :goto_2c
    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 714
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 715
    .local v5, "alarmPackage":Ljava/lang/String;
    if-nez v4, :cond_3b

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 716
    :cond_3b
    if-nez v4, :cond_4a

    .line 717
    new-instance v6, Lcom/android/server/AlarmManagerService$PriorityClass;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    move-object v4, v6

    .line 718
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_4a
    iput-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 722
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v7, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v6, v7, :cond_59

    .line 724
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 725
    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    iput v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    goto :goto_5f

    .line 730
    :cond_59
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v3, v6, :cond_5f

    .line 731
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 700
    .end local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    .end local v5    # "alarmPackage":Ljava/lang/String;
    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 735
    .end local v1    # "i":I
    :cond_62
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .registers 9
    .param p1, "nowELAPSED"    # J

    .line 3468
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3469
    return v1

    .line 3471
    :cond_6
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_f

    .line 3472
    return v1

    .line 3474
    :cond_f
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_1e

    .line 3478
    return v1

    .line 3480
    :cond_1e
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 3481
    .local v2, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2c

    const/4 v1, 0x1

    nop

    :cond_2c
    return v1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .registers 7
    .param p1, "nowELAPSED"    # J

    .line 3440
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v0

    .line 3441
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 3443
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 3444
    :cond_f
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    .line 3446
    const-wide/32 v2, 0xdbba0

    return-wide v2

    .line 3449
    :cond_1a
    const-wide/32 v2, 0x36ee80

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 21
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3485
    move-wide/from16 v3, p2

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 3488
    const/4 v0, 0x0

    .line 3489
    .local v0, "hasMm":I
    const/4 v5, 0x0

    .line 3490
    .local v5, "hasMmBooter":I
    const/4 v6, 0x0

    .line 3491
    .local v6, "hasQq":I
    const/4 v7, 0x0

    .line 3492
    .local v7, "hasXmsf":I
    move v9, v6

    move v6, v5

    move v5, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v5, "hasMm":I
    .local v6, "hasMmBooter":I
    .local v9, "hasQq":I
    :goto_10
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v0, v10, :cond_8f

    .line 3493
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3494
    .local v10, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    sget-object v13, Lcom/android/server/AlarmManagerServiceInjector;->MM_PACKAGE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    iget-object v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    sget-object v13, Lcom/android/server/AlarmManagerServiceInjector;->MM_HEART_BEAT_TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_39

    .line 3496
    iget v12, v1, Lcom/android/server/AlarmManagerService;->mMmDelivered:I

    add-int/2addr v12, v11

    iput v12, v1, Lcom/android/server/AlarmManagerService;->mMmDelivered:I

    .line 3497
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 3498
    :cond_39
    iget-object v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    sget-object v13, Lcom/android/server/AlarmManagerServiceInjector;->MM_PACKAGE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_55

    iget-object v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    sget-object v13, Lcom/android/server/AlarmManagerServiceInjector;->MM_BOOTER_TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_55

    .line 3500
    iget v12, v1, Lcom/android/server/AlarmManagerService;->mMmBooterDelivered:I

    add-int/2addr v12, v11

    iput v12, v1, Lcom/android/server/AlarmManagerService;->mMmBooterDelivered:I

    .line 3501
    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    .line 3502
    :cond_55
    iget-object v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    sget-object v13, Lcom/android/server/AlarmManagerServiceInjector;->QQ_PACKAGE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_71

    iget-object v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    sget-object v13, Lcom/android/server/AlarmManagerServiceInjector;->QQ_HEART_BEAT_TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_71

    .line 3504
    iget v12, v1, Lcom/android/server/AlarmManagerService;->mQqDelivered:I

    add-int/2addr v12, v11

    iput v12, v1, Lcom/android/server/AlarmManagerService;->mQqDelivered:I

    .line 3505
    add-int/lit8 v9, v9, 0x1

    goto :goto_8c

    .line 3506
    :cond_71
    iget-object v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    sget-object v13, Lcom/android/server/AlarmManagerServiceInjector;->XMSF_HEART_BEAT_TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8c

    iget-object v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    sget-object v13, Lcom/android/server/AlarmManagerServiceInjector;->XMSF_PACKAGE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8c

    .line 3508
    iget v12, v1, Lcom/android/server/AlarmManagerService;->mXmsfDelivered:I

    add-int/2addr v12, v11

    iput v12, v1, Lcom/android/server/AlarmManagerService;->mXmsfDelivered:I

    .line 3509
    add-int/lit8 v7, v7, 0x1

    .line 3492
    .end local v10    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_8c
    :goto_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 3512
    .end local v0    # "i":I
    :cond_8f
    if-lez v7, :cond_98

    if-lez v5, :cond_98

    .line 3513
    iget v0, v1, Lcom/android/server/AlarmManagerService;->mMmXmsfDelivered:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/AlarmManagerService;->mMmXmsfDelivered:I

    .line 3515
    :cond_98
    if-lez v7, :cond_a1

    if-lez v6, :cond_a1

    .line 3516
    iget v0, v1, Lcom/android/server/AlarmManagerService;->mMmBooterXmsfDelivered:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/AlarmManagerService;->mMmBooterXmsfDelivered:I

    .line 3518
    :cond_a1
    if-lez v7, :cond_aa

    if-lez v9, :cond_aa

    .line 3519
    iget v0, v1, Lcom/android/server/AlarmManagerService;->mQqXmsfDelivered:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/AlarmManagerService;->mQqXmsfDelivered:I

    .line 3522
    :cond_aa
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_ab
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_11d

    .line 3523
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3524
    .local v12, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c1

    move v0, v11

    goto :goto_c2

    :cond_c1
    const/4 v0, 0x0

    :goto_c2
    move v13, v0

    .line 3525
    .local v13, "allowWhileIdle":Z
    iget-boolean v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    const-wide/32 v14, 0x20000

    if-eqz v0, :cond_e1

    .line 3526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dispatch wakeup alarm to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_f7

    .line 3528
    :cond_e1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dispatch non-wakeup alarm to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3535
    :goto_f7
    :try_start_f7
    iget-object v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v11, v12, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v14, v12, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v0, v8, v11, v14}, Landroid/app/ActivityManager;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 3538
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v0, v12, v3, v4, v13}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 3540
    invoke-static {v12}, Lcom/android/server/AlarmManagerServiceInjector;->removeAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    :try_end_10a
    .catch Ljava/lang/RuntimeException; {:try_start_f7 .. :try_end_10a} :catch_10b

    .line 3543
    goto :goto_113

    .line 3541
    :catch_10b
    move-exception v0

    .line 3542
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v8, "AlarmManager"

    const-string v11, "Failure sending alarm."

    invoke-static {v8, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3544
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_113
    const-wide/32 v14, 0x20000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 3522
    .end local v12    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13    # "allowWhileIdle":Z
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .local v0, "i":I
    const/4 v11, 0x1

    goto :goto_ab

    .line 3546
    .end local v0    # "i":I
    :cond_11d
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 41
    .param p1, "pw"    # Ljava/io/PrintWriter;

    move-object/from16 v1, p0

    .line 1906
    move-object/from16 v10, p1

    iget-object v11, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1907
    :try_start_7
    const-string v0, "Current Alarm Manager state:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 1909
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1911
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v0, :cond_22

    .line 1912
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-string v2, "  "

    invoke-virtual {v0, v10, v2}, Lcom/android/server/AppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1913
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1916
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  App Standby Parole: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v12, v2

    .line 1920
    .local v12, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v14, v2

    .line 1921
    .local v14, "nowELAPSED":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v7, v2

    .line 1922
    .local v7, "nowUPTIME":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1924
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "  nowRTC="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1925
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1926
    const-string v2, " nowELAPSED="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 1927
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1928
    const-string v2, "  mLastTimeChangeClockTime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1929
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    const-string v2, "  mLastTimeChangeRealtime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1931
    const-string v2, "  mLastTickIssued="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1932
    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickIssued:J

    sub-long v3, v14, v3

    sub-long v3, v12, v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1933
    const-string v2, "  mLastTickReceived="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    const-string v2, "  mLastTickSet="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    const-string v2, "  mLastTickAdded="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    const-string v2, "  mLastTickRemoved="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1938
    const-class v2, Lcom/android/server/SystemServiceManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemServiceManager;

    move-object v9, v2

    .line 1939
    .local v9, "ssm":Lcom/android/server/SystemServiceManager;
    if-eqz v9, :cond_152

    .line 1940
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1941
    const-string v2, "  RuntimeStarted="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1942
    new-instance v2, Ljava/util/Date;

    sub-long v3, v12, v14

    .line 1943
    invoke-virtual {v9}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1942
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v9}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v2

    if-eqz v2, :cond_131

    .line 1945
    const-string v2, "  (Runtime restarted)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1947
    :cond_131
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1948
    const-string v2, "  Runtime uptime (elapsed): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v9}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v2

    invoke-static {v14, v15, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1950
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1951
    const-string v2, "  Runtime uptime (uptime): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {v9}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v2

    invoke-static {v7, v8, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1953
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1956
    :cond_152
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1957
    iget-boolean v2, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v2, :cond_168

    .line 1958
    const-string v2, "  Time since non-interactive: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1959
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v2, v14, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1960
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1962
    :cond_168
    const-string v2, "  Max wakeup delay: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {v1, v14, v15}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1964
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1965
    const-string v2, "  Time since last dispatch: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1966
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, v14, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1967
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1968
    const-string v2, "  Next non-wakeup delivery time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1969
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v2, v14, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1970
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1972
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v4, v12, v14

    move-wide/from16 v16, v7

    add-long v7, v2, v4

    .line 1973
    .local v7, "nextWakeupRTC":J
    .local v16, "nowUPTIME":J
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v4, v12, v14

    move-wide/from16 v18, v12

    add-long v12, v2, v4

    .line 1974
    .local v12, "nextNonWakeupRTC":J
    .local v18, "nowRTC":J
    const-string v2, "  Next non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1975
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v2, v3, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1976
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1977
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1978
    const-string v2, "  Next wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-static {v2, v3, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1979
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1980
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastWakeupSet:J

    invoke-static {v2, v3, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1982
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1983
    const-string v2, "  Last wakeup: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-static {v2, v3, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1984
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1985
    const-string v2, "  Last trigger: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-static {v2, v3, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1986
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1987
    const-string v2, "  Num time change events: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1989
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1990
    const-string v2, "  Next alarm clock information: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    move-object v5, v2

    .line 1992
    .local v5, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1992
    .local v2, "i":I
    :goto_23d
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_255

    .line 1993
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1992
    add-int/lit8 v2, v2, 0x1

    goto :goto_23d

    .line 1995
    .end local v2    # "i":I
    :cond_255
    const/4 v2, 0x0

    .line 1995
    .restart local v2    # "i":I
    :goto_256
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_26e

    .line 1996
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1995
    add-int/lit8 v2, v2, 0x1

    goto :goto_256

    .line 1998
    .end local v2    # "i":I
    :cond_26e
    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_272
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    move-wide/from16 v20, v12

    .line 1998
    .end local v12    # "nextNonWakeupRTC":J
    .local v20, "nextNonWakeupRTC":J
    if-eqz v3, :cond_2f0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1999
    .local v3, "user":I
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2000
    .local v4, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v4, :cond_293

    invoke-virtual {v4}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v22

    goto :goto_295

    :cond_293
    const-wide/16 v22, 0x0

    :goto_295
    move-wide/from16 v24, v22

    .line 2001
    .local v24, "time":J
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 2002
    .local v6, "pendingSend":Z
    const-string v12, "    user:"

    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2003
    const-string v12, " pendingSend:"

    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 2004
    const-string v12, " time:"

    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v12, v24

    invoke-virtual {v10, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 2005
    .end local v24    # "time":J
    .local v12, "time":J
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-lez v22, :cond_2dd

    .line 2006
    move-object/from16 v27, v2

    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2007
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v28, v7

    move-wide/from16 v7, v18

    invoke-static {v12, v13, v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2007
    .end local v18    # "nowRTC":J
    .local v7, "nowRTC":J
    .local v28, "nextWakeupRTC":J
    goto :goto_2e3

    .line 2009
    .end local v28    # "nextWakeupRTC":J
    .local v7, "nextWakeupRTC":J
    .restart local v18    # "nowRTC":J
    :cond_2dd
    move-object/from16 v27, v2

    move-wide/from16 v28, v7

    move-wide/from16 v7, v18

    .line 2009
    .end local v18    # "nowRTC":J
    .local v7, "nowRTC":J
    .restart local v28    # "nextWakeupRTC":J
    :goto_2e3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2010
    .end local v3    # "user":I
    .end local v4    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v6    # "pendingSend":Z
    .end local v12    # "time":J
    nop

    .line 1998
    move-wide/from16 v18, v7

    move-wide/from16 v12, v20

    move-object/from16 v2, v27

    move-wide/from16 v7, v28

    goto :goto_272

    .line 2011
    .end local v28    # "nextWakeupRTC":J
    .local v7, "nextWakeupRTC":J
    .restart local v18    # "nowRTC":J
    :cond_2f0
    move-wide/from16 v28, v7

    move-wide/from16 v7, v18

    .line 2011
    .end local v18    # "nowRTC":J
    .local v7, "nowRTC":J
    .restart local v28    # "nextWakeupRTC":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_34d

    .line 2012
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2013
    const-string v2, "  Pending alarm batches: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2014
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2015
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_313
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    move-object v13, v2

    .line 2016
    .local v13, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 2017
    iget-object v3, v13, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v4, "    "

    move-object v2, v10

    move-object/from16 v18, v5

    move-object/from16 v30, v12

    const/4 v12, 0x0

    move-wide v5, v14

    .line 2017
    .end local v5    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v18, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    move-wide/from16 v22, v16

    move-wide/from16 v24, v28

    move-wide/from16 v16, v7

    .line 2017
    .end local v7    # "nowRTC":J
    .end local v28    # "nextWakeupRTC":J
    .local v16, "nowRTC":J
    .local v22, "nowUPTIME":J
    .local v24, "nextWakeupRTC":J
    move-object/from16 v19, v9

    move-object v9, v0

    .line 2017
    .end local v9    # "ssm":Lcom/android/server/SystemServiceManager;
    .local v19, "ssm":Lcom/android/server/SystemServiceManager;
    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2018
    .end local v13    # "b":Lcom/android/server/AlarmManagerService$Batch;
    nop

    .line 2015
    move-wide/from16 v7, v16

    move-object/from16 v5, v18

    move-object/from16 v9, v19

    move-wide/from16 v16, v22

    move-wide/from16 v28, v24

    move-object/from16 v12, v30

    goto :goto_313

    .line 2020
    .end local v18    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v19    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v22    # "nowUPTIME":J
    .end local v24    # "nextWakeupRTC":J
    .restart local v5    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v7    # "nowRTC":J
    .restart local v9    # "ssm":Lcom/android/server/SystemServiceManager;
    .local v16, "nowUPTIME":J
    .restart local v28    # "nextWakeupRTC":J
    :cond_34d
    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-wide/from16 v22, v16

    move-wide/from16 v24, v28

    const/4 v12, 0x0

    move-wide/from16 v16, v7

    .line 2020
    .end local v5    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v7    # "nowRTC":J
    .end local v9    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v28    # "nextWakeupRTC":J
    .local v16, "nowRTC":J
    .restart local v18    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v19    # "ssm":Lcom/android/server/SystemServiceManager;
    .restart local v22    # "nowUPTIME":J
    .restart local v24    # "nextWakeupRTC":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2021
    const-string v2, "  Pending user blocked background alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2022
    const/4 v2, 0x0

    .line 2023
    .local v2, "blocked":Z
    move v13, v2

    move v2, v12

    .line 2023
    .local v2, "i":I
    .local v13, "blocked":Z
    :goto_363
    move v9, v2

    .line 2023
    .end local v2    # "i":I
    .local v9, "i":I
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_393

    .line 2024
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v7, v2

    .line 2025
    .local v7, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v7, :cond_38e

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_38e

    .line 2026
    const/4 v13, 0x1

    .line 2027
    const-string v4, "    "

    move-object v2, v10

    move-object v3, v7

    move-wide v5, v14

    move-object/from16 v26, v7

    move-wide/from16 v7, v16

    .line 2027
    .end local v7    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local v26, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move/from16 v27, v9

    move-object v9, v0

    .line 2027
    .end local v9    # "i":I
    .local v27, "i":I
    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2027
    .end local v26    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    goto :goto_390

    .line 2023
    .end local v27    # "i":I
    .restart local v9    # "i":I
    :cond_38e
    move/from16 v27, v9

    .line 2023
    .end local v9    # "i":I
    .restart local v27    # "i":I
    :goto_390
    add-int/lit8 v2, v27, 0x1

    .line 2023
    .end local v27    # "i":I
    .restart local v2    # "i":I
    goto :goto_363

    .line 2030
    .end local v2    # "i":I
    :cond_393
    if-nez v13, :cond_39a

    .line 2031
    const-string v2, "    none"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    :cond_39a
    const-string v2, "  mLastAlarmDeliveredForPackage:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2035
    move v2, v12

    .line 2035
    .restart local v2    # "i":I
    :goto_3a0
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3ec

    .line 2036
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2037
    .local v3, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2038
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2039
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2035
    .end local v3    # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a0

    .line 2041
    .end local v2    # "i":I
    :cond_3ec
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2043
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v2, :cond_3fb

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_435

    .line 2044
    :cond_3fb
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2045
    const-string v2, "    Idle mode state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    const-string v2, "      Idling until: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2047
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_41e

    .line 2048
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2049
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "        "

    move-object v3, v10

    move-wide v5, v14

    move-wide/from16 v7, v16

    move-object v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_424

    .line 2051
    :cond_41e
    const-string/jumbo v2, "null"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    :goto_424
    const-string v2, "      Pending alarms:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string v4, "      "

    move-object v2, v10

    move-wide v5, v14

    move-wide/from16 v7, v16

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2056
    :cond_435
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_452

    .line 2057
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2058
    const-string v2, "  Next wake from idle: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2059
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "    "

    move-object v3, v10

    move-wide v5, v14

    move-wide/from16 v7, v16

    move-object v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2062
    :cond_452
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2063
    const-string v2, "  Past-due non-wakeup alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2064
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_478

    .line 2065
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2066
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v4, "    "

    move-object v2, v10

    move-wide v5, v14

    move-wide/from16 v7, v16

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_47d

    .line 2068
    :cond_478
    const-string v2, "(none)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    :goto_47d
    const-string v2, "    Number of delayed alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2071
    const-string v2, ", total delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2072
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2073
    const-string v2, "    Max delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2074
    const-string v2, ", max non-interactive time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2075
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2076
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2078
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2079
    const-string v2, "  Broadcast ref count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2080
    const-string v2, "  PendingIntent send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2081
    const-string v2, "  PendingIntent finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2082
    const-string v2, "  Listener send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2083
    const-string v2, "  Listener finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2084
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2086
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_515

    .line 2087
    const-string v2, "Outstanding deliveries:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    move v2, v12

    .line 2088
    .restart local v2    # "i":I
    :goto_4f1
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_512

    .line 2089
    const-string v3, "   #"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2090
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2088
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f1

    .line 2092
    .end local v2    # "i":I
    :cond_512
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2095
    :cond_515
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-lez v2, :cond_56a

    .line 2096
    const-string v2, "  Last allow while idle dispatch times:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    move v2, v12

    .line 2097
    .restart local v2    # "i":I
    :goto_523
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_56a

    .line 2098
    const-string v3, "    UID "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2099
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    .line 2100
    .local v3, "uid":I
    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2101
    const-string v4, ": "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2102
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 2103
    .local v4, "lastTime":J
    invoke-static {v4, v5, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2105
    invoke-direct {v1, v3}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    .line 2106
    .local v6, "minInterval":J
    const-string v8, "  Next allowed:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2107
    add-long v8, v4, v6

    invoke-static {v8, v9, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2108
    const-string v8, " ("

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2109
    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2110
    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2112
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2097
    .end local v3    # "uid":I
    .end local v4    # "lastTime":J
    .end local v6    # "minInterval":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_523

    .line 2116
    .end local v2    # "i":I
    :cond_56a
    const-string v2, "  mUseAllowWhileIdleShortTime: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2117
    move v2, v12

    .line 2117
    .restart local v2    # "i":I
    :goto_570
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_591

    .line 2118
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_58e

    .line 2119
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2120
    const-string v3, " "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2117
    :cond_58e
    add-int/lit8 v2, v2, 0x1

    goto :goto_570

    .line 2123
    .end local v2    # "i":I
    :cond_591
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2126
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v3, "  Recent problems"

    const-string v4, "    "

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a8

    .line 2127
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2130
    :cond_5a8
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2131
    .local v2, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v3, v1}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2142
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 2144
    .local v4, "len":I
    move v5, v4

    move v4, v12

    .line 2144
    .local v4, "iu":I
    .local v5, "len":I
    :goto_5b4
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_63b

    .line 2145
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2146
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    move v7, v5

    move v5, v12

    .line 2146
    .local v5, "ip":I
    .local v7, "len":I
    :goto_5c6
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_633

    .line 2147
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2148
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    move v9, v7

    move v7, v12

    .line 2148
    .local v7, "is":I
    .local v9, "len":I
    :goto_5d4
    iget-object v12, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v7, v12, :cond_62a

    .line 2149
    iget-object v12, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2150
    .local v12, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v9, :cond_5ee

    .line 2151
    move-object/from16 v31, v0

    const/4 v0, 0x0

    invoke-static {v2, v0, v9, v12, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v26

    .line 2151
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .local v31, "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_5f3

    .line 2151
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5ee
    move-object/from16 v31, v0

    const/4 v0, 0x0

    .line 2151
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    move/from16 v26, v0

    :goto_5f3
    move/from16 v32, v26

    .line 2152
    .local v32, "pos":I
    move/from16 v0, v32

    if-gez v0, :cond_601

    .line 2153
    .end local v32    # "pos":I
    .local v0, "pos":I
    move-object/from16 v33, v6

    neg-int v6, v0

    .line 2153
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .local v33, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    add-int/lit8 v32, v6, -0x1

    .line 2155
    .end local v0    # "pos":I
    .restart local v32    # "pos":I
    move/from16 v0, v32

    goto :goto_603

    .line 2155
    .end local v32    # "pos":I
    .end local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v0    # "pos":I
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_601
    move-object/from16 v33, v6

    .line 2155
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :goto_603
    array-length v6, v2

    if-ge v0, v6, :cond_61e

    .line 2156
    array-length v6, v2

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    .line 2157
    .local v6, "copylen":I
    if-lez v6, :cond_614

    .line 2158
    move-object/from16 v34, v8

    add-int/lit8 v8, v0, 0x1

    .line 2158
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v34, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v2, v0, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_616

    .line 2160
    .end local v34    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_614
    move-object/from16 v34, v8

    .line 2160
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v34    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :goto_616
    aput-object v12, v2, v0

    .line 2161
    array-length v8, v2

    if-ge v9, v8, :cond_620

    .line 2162
    add-int/lit8 v9, v9, 0x1

    .line 2162
    .end local v0    # "pos":I
    .end local v6    # "copylen":I
    .end local v12    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    goto :goto_620

    .line 2148
    .end local v34    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_61e
    move-object/from16 v34, v8

    .line 2148
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v34    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_620
    :goto_620
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v31

    move-object/from16 v6, v33

    move-object/from16 v8, v34

    const/4 v12, 0x0

    goto :goto_5d4

    .line 2146
    .end local v7    # "is":I
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v34    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_62a
    move-object/from16 v31, v0

    move-object/from16 v33, v6

    .line 2146
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    add-int/lit8 v5, v5, 0x1

    move v7, v9

    const/4 v12, 0x0

    goto :goto_5c6

    .line 2144
    .end local v5    # "ip":I
    .end local v9    # "len":I
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .local v7, "len":I
    :cond_633
    move-object/from16 v31, v0

    .line 2144
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    const/4 v12, 0x0

    goto/16 :goto_5b4

    .line 2168
    .end local v4    # "iu":I
    .end local v7    # "len":I
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .local v5, "len":I
    :cond_63b
    move-object/from16 v31, v0

    .line 2168
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v31    # "sdf":Ljava/text/SimpleDateFormat;
    if-lez v5, :cond_69b

    .line 2169
    const-string v0, "  Top Alarms:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    const/4 v0, 0x0

    .line 2170
    .local v0, "i":I
    :goto_645
    if-ge v0, v5, :cond_69b

    .line 2171
    aget-object v4, v2, v0

    .line 2172
    .local v4, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v6, "    "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2173
    iget v6, v4, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v6, :cond_657

    const-string v6, "*ACTIVE* "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2174
    :cond_657
    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v6, v7, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2175
    const-string v6, " running, "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2176
    const-string v6, " wakeups, "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 2177
    const-string v6, " alarms: "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v6, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2178
    const-string v6, ":"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2179
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2180
    const-string v6, "      "

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2170
    .end local v4    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_645

    .line 2185
    .end local v0    # "i":I
    :cond_69b
    const-string v0, " "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    const-string v0, "  Alarm Stats:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2188
    .local v0, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 2188
    .local v4, "iu":I
    :goto_6ab
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_790

    .line 2189
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2190
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .line 2190
    .local v7, "ip":I
    :goto_6bc
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_786

    .line 2191
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2192
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v9, "  "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    iget v9, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v9, :cond_6d6

    const-string v9, "*ACTIVE* "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    :cond_6d6
    iget v9, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2195
    const-string v9, ":"

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    iget-object v9, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2197
    const-string v9, " "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v35, v5

    move-object/from16 v36, v6

    iget-wide v5, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 2197
    .end local v5    # "len":I
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .local v35, "len":I
    .local v36, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-static {v5, v6, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2198
    const-string v5, " running, "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2199
    const-string v5, " wakeups:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2201
    const/4 v5, 0x0

    .line 2201
    .local v5, "is":I
    :goto_706
    iget-object v6, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_71c

    .line 2202
    iget-object v6, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2201
    add-int/lit8 v5, v5, 0x1

    goto :goto_706

    .line 2204
    .end local v5    # "is":I
    :cond_71c
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2205
    const/4 v5, 0x0

    .line 2205
    .local v5, "i":I
    :goto_720
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_77a

    .line 2206
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2207
    .local v6, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v9, "    "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2208
    iget v9, v6, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v9, :cond_73a

    const-string v9, "*ACTIVE* "

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2209
    :cond_73a
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    iget-wide v2, v6, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 2209
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v37, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .local v38, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2210
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v6, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2211
    const-string v2, " wakes "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v6, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2212
    const-string v2, " alarms, last "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    iget-wide v2, v6, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v2, v3, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2214
    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    const-string v2, "      "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    iget-object v2, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2217
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2205
    .end local v6    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    goto :goto_720

    .line 2190
    .end local v5    # "i":I
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v37    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v38    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_77a
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    .line 2190
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v37    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v38    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v35

    move-object/from16 v6, v36

    goto/16 :goto_6bc

    .line 2188
    .end local v7    # "ip":I
    .end local v35    # "len":I
    .end local v36    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v37    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v38    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v5, "len":I
    :cond_786
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move/from16 v35, v5

    .line 2188
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v5    # "len":I
    .restart local v35    # "len":I
    .restart local v37    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v38    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6ab

    .line 2221
    .end local v4    # "iu":I
    .end local v35    # "len":I
    .end local v37    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v38    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v5    # "len":I
    :cond_790
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move/from16 v35, v5

    .line 2221
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v5    # "len":I
    .restart local v35    # "len":I
    .restart local v37    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v38    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2222
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2225
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2226
    const-string v2, "  Aligned Stats:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2227
    const-string v2, "  mm:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mMmDelivered:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2228
    const-string v2, "  mm_booter:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mMmBooterDelivered:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2229
    const-string v2, "  qq:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mQqDelivered:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2230
    const-string v2, "  xmsf:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mXmsfDelivered:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2231
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2232
    const-string v2, "  mm aligned:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mMmXmsfDelivered:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2233
    const-string v2, "  mm_booter aligned:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mMmBooterXmsfDelivered:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2234
    const-string v2, "  qq aligned:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mQqXmsfDelivered:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2235
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2236
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2283
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v13    # "blocked":Z
    .end local v14    # "nowELAPSED":J
    .end local v16    # "nowRTC":J
    .end local v18    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v19    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v20    # "nextNonWakeupRTC":J
    .end local v22    # "nowUPTIME":J
    .end local v24    # "nextWakeupRTC":J
    .end local v31    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v35    # "len":I
    .end local v37    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v38    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    monitor-exit v11

    .line 2284
    return-void

    .line 2283
    :catchall_7f9
    move-exception v0

    monitor-exit v11
    :try_end_7fb
    .catchall {:try_start_7 .. :try_end_7fb} :catchall_7f9

    throw v0
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 33
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    move-object/from16 v1, p0

    .line 2287
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    .line 2289
    .local v11, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v12, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2290
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v13, v3

    .line 2291
    .local v13, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-wide v9, v3

    .line 2292
    .local v9, "nowElapsed":J
    const-wide v3, 0x10300000001L

    invoke-virtual {v11, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2293
    const-wide v7, 0x10300000002L

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2294
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2296
    const-wide v3, 0x10300000004L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2299
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2301
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v0, :cond_53

    .line 2302
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AppStateTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2306
    :cond_53
    const-wide v3, 0x10800000007L

    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2307
    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_91

    .line 2309
    const-wide v3, 0x10300000008L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2311
    const-wide v3, 0x10300000009L

    .line 2312
    invoke-virtual {v1, v9, v10}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v7

    .line 2311
    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2313
    const-wide v3, 0x1030000000aL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2315
    const-wide v3, 0x1030000000bL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2319
    :cond_91
    const-wide v3, 0x1030000000cL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2321
    const-wide v3, 0x1030000000dL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2323
    const-wide v3, 0x1030000000eL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2325
    const-wide v3, 0x1030000000fL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastWakeupSet:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2327
    const-wide v3, 0x10300000010L

    iget v0, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2329
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2330
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v7, v3

    .line 2331
    .local v7, "nextAlarmClockForUserSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d6
    if-ge v3, v7, :cond_e8

    .line 2332
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2331
    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    .line 2334
    .end local v3    # "i":I
    :cond_e8
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 2335
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v4, v3

    .line 2336
    .local v4, "pendingSendNextAlarmClockChangedForUserSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_f0
    if-ge v3, v4, :cond_102

    .line 2337
    iget-object v8, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2336
    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    .line 2339
    .end local v3    # "i":I
    :cond_102
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_106
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_166

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2340
    .local v8, "user":I
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2341
    .local v15, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v15, :cond_125

    invoke-virtual {v15}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v21

    goto :goto_127

    :cond_125
    const-wide/16 v21, 0x0

    :goto_127
    move-wide/from16 v23, v21

    .line 2342
    .local v23, "time":J
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 2343
    .local v5, "pendingSend":Z
    move-object/from16 v25, v3

    const-wide v2, 0x20b00000012L

    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2344
    .local v2, "aToken":J
    move/from16 v26, v7

    const-wide v6, 0x10500000001L

    invoke-virtual {v11, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2345
    .end local v7    # "nextAlarmClockForUserSize":I
    .local v26, "nextAlarmClockForUserSize":I
    const-wide v6, 0x10800000002L

    invoke-virtual {v11, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2346
    move-wide/from16 v27, v13

    move-wide/from16 v6, v23

    const-wide v13, 0x10300000003L

    invoke-virtual {v11, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2347
    .end local v13    # "nowRTC":J
    .end local v23    # "time":J
    .local v6, "time":J
    .local v27, "nowRTC":J
    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2348
    .end local v2    # "aToken":J
    .end local v5    # "pendingSend":Z
    .end local v6    # "time":J
    .end local v8    # "user":I
    .end local v15    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    nop

    .line 2339
    move-wide v5, v13

    move-object/from16 v3, v25

    move/from16 v7, v26

    move-wide/from16 v13, v27

    move-object/from16 v2, p1

    goto :goto_106

    .line 2349
    .end local v26    # "nextAlarmClockForUserSize":I
    .end local v27    # "nowRTC":J
    .restart local v7    # "nextAlarmClockForUserSize":I
    .restart local v13    # "nowRTC":J
    :cond_166
    move/from16 v26, v7

    move-wide/from16 v27, v13

    const-wide v6, 0x10500000001L

    const-wide v13, 0x10300000003L

    .end local v7    # "nextAlarmClockForUserSize":I
    .end local v13    # "nowRTC":J
    .restart local v26    # "nextAlarmClockForUserSize":I
    .restart local v27    # "nowRTC":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 2350
    .local v3, "b":Lcom/android/server/AlarmManagerService$Batch;
    const-wide v15, 0x20b00000013L

    move/from16 v18, v4

    move-object v4, v11

    .end local v4    # "pendingSendNextAlarmClockChangedForUserSize":I
    .local v18, "pendingSendNextAlarmClockChangedForUserSize":I
    move-wide v7, v6

    move-wide v5, v15

    move-wide v13, v7

    move/from16 v15, v26

    move-wide v7, v9

    .end local v26    # "nextAlarmClockForUserSize":I
    .local v15, "nextAlarmClockForUserSize":I
    move-wide/from16 v16, v9

    move-wide/from16 v9, v27

    .end local v9    # "nowElapsed":J
    .local v16, "nowElapsed":J
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Batch;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2352
    .end local v3    # "b":Lcom/android/server/AlarmManagerService$Batch;
    nop

    .line 2349
    move-wide v6, v13

    move/from16 v26, v15

    move-wide/from16 v9, v16

    move/from16 v4, v18

    const-wide v13, 0x10300000003L

    goto :goto_17a

    .line 2353
    .end local v15    # "nextAlarmClockForUserSize":I
    .end local v16    # "nowElapsed":J
    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v4    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v9    # "nowElapsed":J
    .restart local v26    # "nextAlarmClockForUserSize":I
    :cond_1a9
    move/from16 v18, v4

    move-wide v13, v6

    move-wide/from16 v16, v9

    move/from16 v15, v26

    .end local v4    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v9    # "nowElapsed":J
    .end local v26    # "nextAlarmClockForUserSize":I
    .restart local v15    # "nextAlarmClockForUserSize":I
    .restart local v16    # "nowElapsed":J
    .restart local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b1
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1ee

    .line 2354
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v9, v3

    .line 2355
    .local v9, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v9, :cond_1eb

    .line 2356
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1c8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1eb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2357
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000014L

    move-object v4, v11

    move-wide/from16 v7, v16

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-wide/from16 v9, v27

    .end local v9    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local v19, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2360
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    nop

    .line 2356
    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_1c8

    .line 2353
    .end local v19    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b1

    .line 2363
    .end local v2    # "i":I
    :cond_1ee
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_201

    .line 2364
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000015L

    move-object v4, v11

    move-wide/from16 v7, v16

    move-wide/from16 v9, v27

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2367
    :cond_201
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_207
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_221

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2368
    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000016L

    move-object v4, v11

    move-wide/from16 v7, v16

    move-wide/from16 v9, v27

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2370
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_207

    .line 2371
    :cond_221
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_234

    .line 2372
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000017L

    move-object v4, v11

    move-wide/from16 v7, v16

    move-wide/from16 v9, v27

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2376
    :cond_234
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_254

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2377
    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000018L

    move-object v4, v11

    move-wide/from16 v7, v16

    move-wide/from16 v9, v27

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 2379
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_23a

    .line 2381
    :cond_254
    const-wide v2, 0x10500000019L

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2382
    const-wide v2, 0x1030000001aL

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2383
    const-wide v2, 0x1030000001bL

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2384
    const-wide v2, 0x1030000001cL

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2387
    const-wide v2, 0x1050000001dL

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2388
    const-wide v2, 0x1050000001eL

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2389
    const-wide v2, 0x1050000001fL

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2390
    const-wide v2, 0x10500000020L

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2391
    const-wide v2, 0x10500000021L

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2393
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2394
    .local v3, "f":Lcom/android/server/AlarmManagerService$InFlight;
    const-wide v4, 0x20b00000022L

    invoke-virtual {v3, v11, v4, v5}, Lcom/android/server/AlarmManagerService$InFlight;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2395
    .end local v3    # "f":Lcom/android/server/AlarmManagerService$InFlight;
    goto :goto_2b4

    .line 2397
    :cond_2c9
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2ca
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_30c

    .line 2398
    const-wide v3, 0x20b00000024L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2400
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    .line 2401
    .local v5, "uid":I
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    .line 2403
    .local v6, "lastTime":J
    invoke-virtual {v11, v13, v14, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2404
    const-wide v8, 0x10300000002L

    invoke-virtual {v11, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2405
    nop

    .line 2406
    invoke-direct {v1, v5}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v19

    add-long v8, v6, v19

    .line 2405
    const-wide v13, 0x10300000003L

    invoke-virtual {v11, v13, v14, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2407
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2397
    .end local v3    # "token":J
    .end local v5    # "uid":I
    .end local v6    # "lastTime":J
    add-int/lit8 v2, v2, 0x1

    const-wide v13, 0x10500000001L

    goto :goto_2ca

    .line 2410
    .end local v2    # "i":I
    :cond_30c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_30d
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_32e

    .line 2411
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_32b

    .line 2412
    const-wide v3, 0x20500000023L

    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 2413
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2412
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2410
    :cond_32b
    add-int/lit8 v2, v2, 0x1

    goto :goto_30d

    .line 2417
    .end local v2    # "i":I
    :cond_32e
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v3, 0x10b00000025L

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/internal/util/LocalLog;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2419
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2420
    .local v2, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/AlarmManagerService$4;

    invoke-direct {v3, v1}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2431
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 2433
    .local v4, "len":I
    move v5, v4

    const/4 v4, 0x0

    .local v4, "iu":I
    .local v5, "len":I
    :goto_344
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_3b1

    .line 2434
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2435
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    move v7, v5

    const/4 v5, 0x0

    .local v5, "ip":I
    .local v7, "len":I
    :goto_356
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_3ab

    .line 2436
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2437
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    move v9, v7

    const/4 v7, 0x0

    .local v7, "is":I
    .local v9, "len":I
    :goto_364
    iget-object v10, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v7, v10, :cond_3a5

    .line 2438
    iget-object v10, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2439
    .local v10, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v9, :cond_37c

    .line 2440
    const/4 v13, 0x0

    invoke-static {v2, v13, v9, v10, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v14

    goto :goto_37e

    :cond_37c
    const/4 v13, 0x0

    move v14, v13

    .line 2441
    .local v14, "pos":I
    :goto_37e
    if-gez v14, :cond_383

    .line 2442
    neg-int v13, v14

    add-int/lit8 v14, v13, -0x1

    .line 2444
    :cond_383
    array-length v13, v2

    if-ge v14, v13, :cond_39e

    .line 2445
    array-length v13, v2

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    .line 2446
    .local v13, "copylen":I
    if-lez v13, :cond_394

    .line 2447
    move-object/from16 v29, v0

    add-int/lit8 v0, v14, 0x1

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v29, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-static {v2, v14, v2, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_396

    .line 2449
    .end local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_394
    move-object/from16 v29, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :goto_396
    aput-object v10, v2, v14

    .line 2450
    array-length v0, v2

    if-ge v9, v0, :cond_3a0

    .line 2451
    add-int/lit8 v9, v9, 0x1

    .end local v10    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13    # "copylen":I
    .end local v14    # "pos":I
    goto :goto_3a0

    .line 2437
    .end local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_39e
    move-object/from16 v29, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3a0
    :goto_3a0
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v29

    goto :goto_364

    .line 2435
    .end local v7    # "is":I
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3a5
    move-object/from16 v29, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto :goto_356

    .line 2433
    .end local v5    # "ip":I
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v9    # "len":I
    .end local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v7, "len":I
    :cond_3ab
    move-object/from16 v29, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_344

    .line 2457
    .end local v4    # "iu":I
    .end local v7    # "len":I
    .end local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v5, "len":I
    :cond_3b1
    move-object/from16 v29, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b4
    if-ge v0, v5, :cond_3e7

    .line 2458
    const-wide v6, 0x20b00000026L

    invoke-virtual {v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2459
    .local v6, "token":J
    aget-object v4, v2, v0

    .line 2461
    .local v4, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v8, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v8, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v9, 0x10500000001L

    invoke-virtual {v11, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2462
    const-wide v13, 0x10900000002L

    iget-object v8, v4, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2464
    const-wide v13, 0x10b00000003L

    invoke-virtual {v4, v11, v13, v14}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2466
    invoke-virtual {v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2457
    .end local v4    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v6    # "token":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b4

    .line 2469
    .end local v0    # "i":I
    :cond_3e7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2470
    .local v0, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .local v4, "iu":I
    :goto_3ed
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_46b

    .line 2471
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2472
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_3fe
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_464

    .line 2473
    const-wide v8, 0x20b00000027L

    invoke-virtual {v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2475
    .local v8, "token":J
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2476
    .local v10, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-wide v13, 0x10b00000001L

    invoke-virtual {v10, v11, v13, v14}, Lcom/android/server/AlarmManagerService$BroadcastStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2479
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2480
    const/4 v13, 0x0

    .local v13, "is":I
    :goto_41f
    iget-object v14, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_435

    .line 2481
    iget-object v14, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2480
    add-int/lit8 v13, v13, 0x1

    goto :goto_41f

    .line 2483
    .end local v13    # "is":I
    :cond_435
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2484
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_43c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_458

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2485
    .local v14, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v30, v0

    const-wide v0, 0x20b00000002L

    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v30, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v14, v11, v0, v1}, Lcom/android/server/AlarmManagerService$FilterStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2486
    .end local v14    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    nop

    .line 2484
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    goto :goto_43c

    .line 2488
    .end local v30    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_458
    move-object/from16 v30, v0

    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v30    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2472
    .end local v8    # "token":J
    .end local v10    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    goto :goto_3fe

    .line 2470
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "ip":I
    .end local v30    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_464
    move-object/from16 v30, v0

    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v30    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    goto :goto_3ed

    .line 2519
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v4    # "iu":I
    .end local v5    # "len":I
    .end local v15    # "nextAlarmClockForUserSize":I
    .end local v16    # "nowElapsed":J
    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v27    # "nowRTC":J
    .end local v29    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v30    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_46b
    monitor-exit v12
    :try_end_46c
    .catchall {:try_start_d .. :try_end_46c} :catchall_470

    .line 2521
    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2522
    return-void

    .line 2519
    :catchall_470
    move-exception v0

    :try_start_471
    monitor-exit v12
    :try_end_472
    .catchall {:try_start_471 .. :try_end_472} :catchall_470

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1410
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->close(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 1412
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1413
    nop

    .line 1414
    return-void

    .line 1412
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 2578
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2579
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object v1

    .line 2580
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getNextWakeFromIdleTimeImpl()J
    .registers 4

    .line 2572
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2573
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_11

    :cond_c
    const-wide v1, 0x7fffffffffffffffL

    :goto_11
    monitor-exit v0

    return-wide v1

    .line 2574
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)Z"
        }
    .end annotation

    .line 829
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 830
    return v1

    .line 832
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 833
    .local v0, "batchSize":I
    move v2, v1

    .local v2, "j":I
    :goto_d
    if-ge v2, v0, :cond_20

    .line 834
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    if-ne v3, v4, :cond_1d

    .line 835
    const/4 v1, 0x1

    return v1

    .line 833
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 838
    .end local v2    # "j":I
    :cond_20
    return v1
.end method

.method haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)Z"
        }
    .end annotation

    .line 842
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 843
    .local v0, "numBatches":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_1b

    .line 844
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 845
    const/4 v1, 0x1

    return v1

    .line 843
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 848
    .end local v2    # "i":I
    :cond_1b
    return v1
.end method

.method interactiveStateChangedLocked(Z)V
    .registers 8
    .param p1, "interactive"    # Z

    .line 2976
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_46

    .line 2977
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 2978
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2979
    .local v0, "nowELAPSED":J
    if-eqz p1, :cond_44

    .line 2980
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    .line 2981
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 2982
    .local v2, "thisDelayTime":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 2983
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_25

    .line 2984
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2986
    :cond_25
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 2987
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2989
    .end local v2    # "thisDelayTime":J
    :cond_2f
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_46

    .line 2990
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v2, v0, v2

    .line 2991
    .local v2, "dur":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_43

    .line 2992
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 2994
    .end local v2    # "dur":J
    :cond_43
    goto :goto_46

    .line 2996
    :cond_44
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 2999
    .end local v0    # "nowELAPSED":J
    :cond_46
    :goto_46
    return-void
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3002
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1d

    .line 3003
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 3004
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3005
    return v3

    .line 3002
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3008
    .end local v1    # "i":I
    :cond_1d
    move v1, v0

    .restart local v1    # "i":I
    :goto_1e
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 3009
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3010
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3011
    return v3

    .line 3008
    .end local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 3014
    .end local v1    # "i":I
    :cond_38
    return v0
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 1394
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_4e

    .line 1395
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1397
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1398
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 1399
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1400
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/AlarmManagerService$AppStandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1402
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1403
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 1405
    :cond_4e
    return-void
.end method

.method public onStart()V
    .registers 10

    .line 1316
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 1317
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1321
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 1324
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_53

    .line 1325
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1326
    .local v2, "systemBuildTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_53

    .line 1327
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current time only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", advancing to build time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    .line 1334
    .end local v2    # "systemBuildTime":J
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1336
    .local v2, "packMan":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_5c
    const-string v4, "android.permission.systemui.IDENTITY"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 1337
    .local v4, "sysUiPerm":Landroid/content/pm/PermissionInfo;
    iget-object v5, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1338
    .local v5, "sysUi":Landroid/content/pm/ApplicationInfo;
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_73

    .line 1339
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    goto :goto_90

    .line 1341
    :cond_73
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SysUI permission android.permission.systemui.IDENTITY defined by non-privileged app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_90} :catch_91

    .line 1346
    .end local v4    # "sysUiPerm":Landroid/content/pm/PermissionInfo;
    .end local v5    # "sysUi":Landroid/content/pm/ApplicationInfo;
    :goto_90
    goto :goto_92

    .line 1345
    :catch_91
    move-exception v4

    .line 1348
    :goto_92
    iget v4, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    if-gtz v4, :cond_9d

    .line 1349
    const-string v4, "AlarmManager"

    const-string v5, "SysUI package not found!"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_9d
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1353
    .local v4, "pm":Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "*alarm*"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIME_TICK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x50200000

    .line 1356
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1355
    invoke-static {v5, v3, v6, v3, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 1361
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1362
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20200000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1364
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4000000

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v6, v3, v5, v7, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1368
    new-instance v3, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 1369
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1370
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1371
    new-instance v3, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    .line 1372
    new-instance v3, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 1374
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_114

    .line 1375
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1376
    .local v0, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 1377
    .end local v0    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    goto :goto_11b

    .line 1378
    :cond_114
    const-string v0, "AlarmManager"

    const-string v1, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :goto_11b
    :try_start_11b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/AlarmManagerService$UidObserver;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$UidObserver;-><init>(Lcom/android/server/AlarmManagerService;)V

    const/16 v3, 0xe

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface {v0, v1, v3, v6, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_12b} :catch_12c

    .line 1388
    goto :goto_12d

    .line 1386
    :catch_12c
    move-exception v0

    .line 1389
    :goto_12d
    const-string v0, "alarm"

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1390
    return-void
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .registers 14
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    .line 958
    invoke-static {p1}, Lcom/android/server/AlarmManagerServiceInjector;->isAlarmAligned(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 959
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 960
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    .line 962
    .local v0, "whenElapsed":J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1c

    .line 964
    move-wide v2, v0

    .local v2, "maxElapsed":J
    goto :goto_32

    .line 969
    .end local v2    # "maxElapsed":J
    :cond_1c
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    .line 970
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v2

    goto :goto_32

    .line 971
    :cond_2a
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide v3, p2

    move-wide v5, v0

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v2

    .line 973
    .restart local v2    # "maxElapsed":J
    :goto_32
    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 974
    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 977
    .end local v0    # "whenElapsed":J
    .end local v2    # "maxElapsed":J
    :cond_36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 978
    return-void
.end method

.method rebatchAllAlarms()V
    .registers 3

    .line 853
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 855
    monitor-exit v0

    .line 856
    return-void

    .line 855
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method rebatchAllAlarmsLocked(Z)V
    .registers 20
    .param p1, "doValidate"    # Z

    move-object/from16 v0, p0

    .line 859
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    .line 860
    .local v1, "start":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 861
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    add-int/2addr v3, v4

    .line 862
    .local v3, "oldCount":I
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_28

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 863
    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_28

    :cond_26
    const/4 v4, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v4, 0x1

    .line 865
    .local v4, "oldHasTick":Z
    :goto_29
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 866
    .local v7, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 867
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 868
    .local v8, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 869
    .local v9, "nowElapsed":J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 870
    .local v11, "oldBatches":I
    const/4 v12, 0x0

    .local v12, "batchNum":I
    :goto_41
    if-ge v12, v11, :cond_61

    .line 871
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    .line 872
    .local v13, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v14

    .line 873
    .local v14, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4e
    if-ge v15, v14, :cond_5c

    .line 874
    invoke-virtual {v13, v15}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v5

    move/from16 v6, p1

    invoke-virtual {v0, v5, v9, v10, v6}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 873
    add-int/lit8 v15, v15, 0x1

    goto :goto_4e

    .line 870
    .end local v13    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v14    # "N":I
    .end local v15    # "i":I
    :cond_5c
    move/from16 v6, p1

    add-int/lit8 v12, v12, 0x1

    goto :goto_41

    .line 877
    .end local v12    # "batchNum":I
    :cond_61
    move/from16 v6, p1

    if-eqz v8, :cond_90

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v8, v5, :cond_90

    .line 878
    const-string v5, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rebatching: idle until changed from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v5, :cond_90

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 885
    :cond_90
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 886
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v5

    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v12

    add-int/2addr v5, v12

    .line 887
    .local v5, "newCount":I
    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_b1

    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 888
    invoke-virtual {v0, v12}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v12

    if-eqz v12, :cond_ae

    goto :goto_b1

    :cond_ae
    const/16 v16, 0x0

    goto :goto_b3

    :cond_b1
    :goto_b1
    const/16 v16, 0x1

    :goto_b3
    move/from16 v12, v16

    .line 890
    .local v12, "newHasTick":Z
    if-eq v3, v5, :cond_d5

    .line 891
    const-string v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rebatching: total count changed from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_d5
    if-eq v4, v12, :cond_f5

    .line 894
    const-string v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rebatching: hasTick changed from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_f5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 899
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v1, v2}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 900
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .registers 15
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .line 3424
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3425
    .local v0, "numBatches":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "nextBatch":I
    :goto_6
    if-ge v2, v0, :cond_35

    .line 3426
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 3427
    .local v3, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, p2

    if-lez v4, :cond_15

    .line 3428
    goto :goto_35

    .line 3431
    :cond_15
    iget-object v4, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3432
    .local v4, "numAlarms":I
    move v5, v1

    .local v5, "nextAlarm":I
    :goto_1c
    if-ge v5, v4, :cond_32

    .line 3433
    iget-object v6, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3434
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v6, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3432
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 3425
    .end local v3    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "numAlarms":I
    .end local v5    # "nextAlarm":I
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3437
    .end local v2    # "nextBatch":I
    :cond_35
    :goto_35
    return-void
.end method

.method removeForStoppedLocked(I)V
    .registers 8
    .param p1, "uid"    # I

    .line 2889
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1c

    .line 2890
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeForStoppedLocked: Shouldn\'t for UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    return-void

    .line 2893
    :cond_1c
    const/4 v0, 0x0

    .line 2894
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$lzZOWJB2te9UTLsLWoZ6M8xouQQ;

    .line 2894
    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$lzZOWJB2te9UTLsLWoZ6M8xouQQ;-><init>(I)V

    .line 2903
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 2903
    .local v2, "i":I
    :goto_2a
    if-ltz v2, :cond_47

    .line 2904
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 2905
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v4, v1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2906
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_44

    .line 2907
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2903
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 2910
    .end local v2    # "i":I
    :cond_47
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 2910
    .restart local v2    # "i":I
    :goto_4e
    if-ltz v2, :cond_64

    .line 2911
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2912
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_61

    .line 2914
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2910
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_4e

    .line 2917
    .end local v2    # "i":I
    :cond_64
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 2917
    .restart local v2    # "i":I
    :goto_6b
    if-ltz v2, :cond_7d

    .line 2918
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ne v4, p1, :cond_7a

    .line 2919
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2917
    :cond_7a
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    .line 2922
    .end local v2    # "i":I
    :cond_7d
    if-eqz v0, :cond_88

    .line 2926
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2927
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2928
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2930
    :cond_88
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 1465
    if-nez p1, :cond_3

    .line 1466
    return-void

    .line 1468
    :cond_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1469
    const/4 v1, 0x0

    :try_start_7
    invoke-direct {p0, p1, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1470
    monitor-exit v0

    .line 1471
    return-void

    .line 1470
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method

.method removeLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .line 2795
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1c

    .line 2796
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeLocked: Shouldn\'t for UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    return-void

    .line 2799
    :cond_1c
    const/4 v0, 0x0

    .line 2800
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;

    .line 2800
    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;-><init>(I)V

    .line 2801
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 2801
    .local v2, "i":I
    :goto_2a
    if-ltz v2, :cond_47

    .line 2802
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 2803
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v4, v1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2804
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_44

    .line 2805
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2801
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 2808
    .end local v2    # "i":I
    :cond_47
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 2808
    .restart local v2    # "i":I
    :goto_4e
    if-ltz v2, :cond_64

    .line 2809
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2810
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_61

    .line 2812
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2808
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_4e

    .line 2815
    .end local v2    # "i":I
    :cond_64
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 2815
    .restart local v2    # "i":I
    :goto_6b
    if-ltz v2, :cond_9a

    .line 2816
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2817
    .local v4, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .line 2817
    .local v5, "j":I
    :goto_7a
    if-ltz v5, :cond_8c

    .line 2818
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v6, p1, :cond_89

    .line 2819
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2817
    :cond_89
    add-int/lit8 v5, v5, -0x1

    goto :goto_7a

    .line 2822
    .end local v5    # "j":I
    :cond_8c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_97

    .line 2823
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2815
    .end local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_97
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    .line 2826
    .end local v2    # "i":I
    :cond_9a
    if-eqz v0, :cond_a5

    .line 2830
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2831
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2832
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2834
    :cond_a5
    return-void
.end method

.method removeLocked(Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2837
    if-nez p1, :cond_3

    .line 2842
    return-void

    .line 2845
    :cond_3
    const/4 v0, 0x0

    .line 2846
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$oMxEf0J1UujgwLNvXJjew5Pq3f0;

    .line 2846
    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$oMxEf0J1UujgwLNvXJjew5Pq3f0;-><init>(Ljava/lang/String;)V

    .line 2847
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v2

    .line 2848
    .local v2, "oldHasTick":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 2848
    .local v3, "i":I
    :goto_17
    if-ltz v3, :cond_34

    .line 2849
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 2850
    .local v5, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v5, v1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 2851
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_31

    .line 2852
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2848
    .end local v5    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_31
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 2855
    .end local v3    # "i":I
    :cond_34
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v3

    .line 2856
    .local v3, "newHasTick":Z
    if-eq v2, v3, :cond_5b

    .line 2857
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeLocked: hasTick changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_5b
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .line 2860
    .local v5, "i":I
    :goto_62
    if-ltz v5, :cond_7a

    .line 2861
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2862
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v6, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 2864
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2860
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_77
    add-int/lit8 v5, v5, -0x1

    goto :goto_62

    .line 2867
    .end local v5    # "i":I
    :cond_7a
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .line 2867
    .restart local v5    # "i":I
    :goto_81
    if-ltz v5, :cond_b2

    .line 2868
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2869
    .local v6, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .line 2869
    .local v7, "j":I
    :goto_90
    if-ltz v7, :cond_a4

    .line 2870
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v8, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 2871
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2869
    :cond_a1
    add-int/lit8 v7, v7, -0x1

    goto :goto_90

    .line 2874
    .end local v7    # "j":I
    :cond_a4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_af

    .line 2875
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2867
    .end local v6    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_af
    add-int/lit8 v5, v5, -0x1

    goto :goto_81

    .line 2878
    .end local v5    # "i":I
    :cond_b2
    if-eqz v0, :cond_bd

    .line 2882
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2883
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2884
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2886
    :cond_bd
    return-void
.end method

.method removeUserLocked(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .line 2933
    if-nez p1, :cond_1a

    .line 2934
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeForStoppedLocked: Shouldn\'t for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    return-void

    .line 2937
    :cond_1a
    const/4 v0, 0x0

    .line 2938
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$nhEd_CDoc7mzdNLRwGUhwl9TaGk;

    .line 2938
    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$nhEd_CDoc7mzdNLRwGUhwl9TaGk;-><init>(I)V

    .line 2940
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 2940
    .local v2, "i":I
    :goto_28
    if-ltz v2, :cond_45

    .line 2941
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 2942
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v4, v1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2943
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_42

    .line 2944
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2940
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 2947
    .end local v2    # "i":I
    :cond_45
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 2947
    .restart local v2    # "i":I
    :goto_4c
    if-ltz v2, :cond_66

    .line 2948
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    iget v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_63

    .line 2951
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2947
    :cond_63
    add-int/lit8 v2, v2, -0x1

    goto :goto_4c

    .line 2954
    .end local v2    # "i":I
    :cond_66
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 2954
    .restart local v2    # "i":I
    :goto_6d
    if-ltz v2, :cond_83

    .line 2955
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_80

    .line 2956
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2954
    :cond_80
    add-int/lit8 v2, v2, -0x1

    goto :goto_6d

    .line 2959
    .end local v2    # "i":I
    :cond_83
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 2959
    .restart local v2    # "i":I
    :goto_8a
    if-ltz v2, :cond_a0

    .line 2960
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_9d

    .line 2961
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 2959
    :cond_9d
    add-int/lit8 v2, v2, -0x1

    goto :goto_8a

    .line 2965
    .end local v2    # "i":I
    :cond_a0
    if-eqz v0, :cond_ab

    .line 2969
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2970
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2971
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2973
    :cond_ab
    return-void
.end method

.method reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 910
    .local p1, "targetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 911
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v2, "rescheduledAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "batchIndex":I
    :goto_13
    if-ltz v3, :cond_5e

    .line 914
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 915
    .local v5, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "alarmIndex":I
    :goto_22
    if-ltz v6, :cond_50

    .line 916
    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v7

    .line 917
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 918
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 919
    .local v8, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_41

    invoke-virtual {p1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 920
    goto :goto_4d

    .line 922
    :cond_41
    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnStandbyBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 923
    invoke-virtual {v5, v7}, Lcom/android/server/AlarmManagerService$Batch;->remove(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 924
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, -0x1

    goto :goto_22

    .line 927
    .end local v6    # "alarmIndex":I
    :cond_50
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_5b

    .line 928
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 913
    .end local v5    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 931
    .end local v3    # "batchIndex":I
    :cond_5e
    const/4 v3, 0x0

    move v5, v3

    .local v5, "i":I
    :goto_60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_72

    .line 932
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 933
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 931
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 936
    .end local v5    # "i":I
    :cond_72
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v5, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 937
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7f

    move v3, v4

    nop

    :cond_7f
    return v3
.end method

.method rescheduleKernelAlarmsLocked()V
    .registers 8

    .line 2714
    const-wide/16 v0, 0x0

    .line 2715
    .local v0, "nextNonWakeup":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2d

    .line 2716
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v2

    .line 2717
    .local v2, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 2718
    .local v3, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v2, :cond_29

    .line 2719
    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 2720
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastWakeupSet:J

    .line 2721
    const/4 v4, 0x2

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 2723
    :cond_29
    if-eq v3, v2, :cond_2d

    .line 2724
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 2727
    .end local v2    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2d
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_43

    .line 2728
    cmp-long v2, v0, v3

    if-eqz v2, :cond_41

    iget-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v2, v5, v0

    if-gez v2, :cond_43

    .line 2729
    :cond_41
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 2732
    :cond_43
    cmp-long v2, v0, v3

    if-eqz v2, :cond_4d

    .line 2733
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 2734
    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 2736
    :cond_4d
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .registers 7

    .line 1127
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 1128
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1129
    .local v0, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1131
    .local v1, "nowElapsed":J
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1b
    if-ltz v3, :cond_2a

    .line 1132
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1133
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1131
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 1138
    .end local v0    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v1    # "nowElapsed":J
    .end local v3    # "i":I
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1139
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1143
    :try_start_30
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_35
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_30 .. :try_end_35} :catch_36

    .line 1145
    goto :goto_37

    .line 1144
    :catch_36
    move-exception v0

    .line 1146
    :goto_37
    return-void
.end method

.method sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .registers 4

    .line 1029
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v0, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1034
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 1035
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1037
    :cond_1c
    return-void
.end method

.method sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 992
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 993
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_52

    .line 997
    :cond_11
    if-eqz p2, :cond_44

    .line 1001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1002
    .local v1, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_38

    .line 1003
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1004
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v3, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1005
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1008
    .end local v2    # "i":I
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4a

    .line 1009
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4a

    .line 1015
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_44
    move-object v1, v0

    .line 1016
    .restart local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1018
    :cond_4a
    :goto_4a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1019
    return-void

    .line 994
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_52
    :goto_52
    return-void
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .registers 56
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p10, "listenerTag"    # Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "workSource"    # Landroid/os/WorkSource;
    .param p13, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p14, "callingUid"    # I
    .param p15, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v15, p0

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-object/from16 v14, p8

    .line 1478
    if-nez v14, :cond_10

    if-eqz p9, :cond_14

    :cond_10
    if-eqz v14, :cond_1c

    if-eqz p9, :cond_1c

    .line 1480
    :cond_14
    const-string v7, "AlarmManager"

    const-string v8, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return-void

    .line 1488
    :cond_1c
    const-wide/32 v7, 0x2932e00

    cmp-long v7, v3, v7

    if-lez v7, :cond_42

    .line 1489
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Window length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const-wide/32 v3, 0x36ee80

    .line 1497
    .end local p4    # "windowLength":J
    .local v3, "windowLength":J
    :cond_42
    iget-object v7, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v11, v7, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 1498
    .local v11, "minInterval":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_79

    cmp-long v9, v5, v11

    if-gez v9, :cond_79

    .line 1499
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Suspiciously short interval "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " millis; expanding to "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x3e8

    div-long v7, v11, v16

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    move-wide v5, v11

    .line 1502
    .end local p6    # "interval":J
    .local v5, "interval":J
    .local v24, "interval":J
    :goto_78
    goto :goto_a1

    .line 1503
    .end local v5    # "interval":J
    .end local v24    # "interval":J
    .restart local p6    # "interval":J
    :cond_79
    iget-object v7, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v7, v7, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v7, v5, v7

    if-lez v7, :cond_a1

    .line 1504
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suspiciously long interval "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " millis; clamping"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v7, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v5, v7, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    goto :goto_78

    .line 1509
    .end local p6    # "interval":J
    .restart local v24    # "interval":J
    :cond_a1
    :goto_a1
    move-wide/from16 v24, v5

    if-ltz v0, :cond_15b

    const/4 v5, 0x3

    if-gt v0, v5, :cond_15b

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/server/AlarmManagerServiceInjector;->adjustWakeUpAlarmType(Landroid/content/Context;I)I

    move-result v13

    .line 1515
    .end local p1    # "type":I
    .local v13, "type":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v13, v14, v5}, Lcom/android/server/AlarmManagerServiceInjector;->recordRTCWakeupInfo(Landroid/content/Context;ILandroid/app/PendingIntent;Z)V

    .line 1518
    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-gez v0, :cond_ef

    .line 1519
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    int-to-long v5, v0

    .line 1520
    .local v5, "what":J
    const-string v0, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid alarm trigger time! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " from uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " pid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const-wide/16 v0, 0x0

    .line 1525
    .end local v5    # "what":J
    .end local p2    # "triggerAtTime":J
    .local v0, "triggerAtTime":J
    move-wide v5, v0

    goto :goto_f2

    .line 1525
    .end local v0    # "triggerAtTime":J
    .restart local p2    # "triggerAtTime":J
    :cond_ef
    move/from16 v8, p14

    move-wide v5, v1

    .line 1525
    .end local p2    # "triggerAtTime":J
    .local v5, "triggerAtTime":J
    :goto_f2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 1526
    .local v26, "nowElapsed":J
    invoke-static {v5, v6, v13}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v28

    .line 1528
    .local v28, "nominalTrigger":J
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    add-long v30, v26, v0

    .line 1529
    .local v30, "minTrigger":J
    cmp-long v0, v28, v30

    if-lez v0, :cond_107

    move-wide/from16 v0, v28

    goto :goto_109

    :cond_107
    move-wide/from16 v0, v30

    :goto_109
    move-wide/from16 v32, v0

    .line 1532
    .local v32, "triggerElapsed":J
    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-nez v2, :cond_117

    .line 1533
    move-wide/from16 v0, v32

    .line 1539
    .end local v3    # "windowLength":J
    .local v9, "maxElapsed":J
    .local v22, "windowLength":J
    :goto_113
    move-wide v9, v0

    move-wide/from16 v22, v3

    goto :goto_12e

    .line 1534
    .end local v9    # "maxElapsed":J
    .end local v22    # "windowLength":J
    .restart local v3    # "windowLength":J
    :cond_117
    cmp-long v0, v3, v0

    if-gez v0, :cond_12b

    .line 1535
    move-wide/from16 v16, v26

    move-wide/from16 v18, v32

    move-wide/from16 v20, v24

    invoke-static/range {v16 .. v21}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v0

    .line 1537
    .local v0, "maxElapsed":J
    sub-long v2, v0, v32

    .line 1539
    .end local v3    # "windowLength":J
    .local v2, "windowLength":J
    move-wide v9, v0

    move-wide/from16 v22, v2

    goto :goto_12e

    .line 1539
    .end local v0    # "maxElapsed":J
    .end local v2    # "windowLength":J
    .restart local v3    # "windowLength":J
    :cond_12b
    add-long v0, v32, v3

    goto :goto_113

    .line 1542
    .end local v3    # "windowLength":J
    .restart local v9    # "maxElapsed":J
    .restart local v22    # "windowLength":J
    :goto_12e
    iget-object v7, v15, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1549
    const/16 v17, 0x1

    move-object v1, v15

    move v2, v13

    move-wide v3, v5

    move-wide/from16 v34, v5

    move-wide/from16 v5, v32

    .line 1549
    .end local v5    # "triggerAtTime":J
    .local v34, "triggerAtTime":J
    move-object/from16 v36, v7

    move-wide/from16 v7, v22

    move-wide/from16 v37, v11

    move-wide/from16 v11, v24

    .line 1549
    .end local v11    # "minInterval":J
    .local v37, "minInterval":J
    move/from16 v39, v13

    move-object v13, v14

    .line 1549
    .end local v13    # "type":I
    .local v39, "type":I
    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move/from16 v20, p14

    move-object/from16 v21, p15

    :try_start_153
    invoke-direct/range {v1 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1552
    monitor-exit v36

    .line 1553
    return-void

    .line 1552
    :catchall_158
    move-exception v0

    monitor-exit v36
    :try_end_15a
    .catchall {:try_start_153 .. :try_end_15a} :catchall_158

    throw v0

    .line 1510
    .end local v9    # "maxElapsed":J
    .end local v22    # "windowLength":J
    .end local v26    # "nowElapsed":J
    .end local v28    # "nominalTrigger":J
    .end local v30    # "minTrigger":J
    .end local v32    # "triggerElapsed":J
    .end local v34    # "triggerAtTime":J
    .end local v37    # "minInterval":J
    .end local v39    # "type":I
    .restart local v3    # "windowLength":J
    .restart local v11    # "minInterval":J
    .restart local p1    # "type":I
    .restart local p2    # "triggerAtTime":J
    :cond_15b
    move-wide/from16 v37, v11

    .line 1510
    .end local v11    # "minInterval":J
    .restart local v37    # "minInterval":J
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid alarm type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method setTimeImpl(J)Z
    .registers 7
    .param p1, "millis"    # J

    .line 1417
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1418
    const-string v0, "AlarmManager"

    const-string v2, "Not setting time since no alarm driver is available."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    return v1

    .line 1422
    :cond_11
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    :try_start_14
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v2

    if-nez v2, :cond_1e

    const/4 v1, 0x1

    nop

    :cond_1e
    monitor-exit v0

    return v1

    .line 1424
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v1
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .registers 9
    .param p1, "tz"    # Ljava/lang/String;

    .line 1428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1429
    return-void

    .line 1432
    :cond_7
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1435
    .local v0, "zone":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .line 1436
    .local v1, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 1437
    :try_start_d
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, "current":Ljava/lang/String;
    if-eqz v2, :cond_20

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1442
    :cond_20
    const/4 v1, 0x1

    .line 1443
    const-string/jumbo v3, "persist.sys.timezone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 1449
    .local v3, "gmtOffset":I
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v6, 0xea60

    div-int v6, v3, v6

    neg-int v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    .line 1450
    .end local v2    # "current":Ljava/lang/String;
    .end local v3    # "gmtOffset":I
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_65

    .line 1452
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1454
    if-eqz v1, :cond_64

    .line 1455
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x21200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1459
    const-string/jumbo v3, "time-zone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1462
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_64
    return-void

    .line 1450
    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;IZ)V
    .registers 14
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "knownUid"    # I
    .param p6, "first"    # Z

    .line 3706
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    if-ne p1, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 3707
    .local v1, "unimportant":Z
    :goto_8
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    .line 3708
    if-nez p6, :cond_1a

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    if-eqz v2, :cond_14

    goto :goto_1a

    .line 3711
    :cond_14
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    goto :goto_1f

    .line 3709
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 3713
    :goto_1f
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    .line 3714
    if-eqz p2, :cond_29

    .line 3715
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3716
    return-void

    .line 3719
    :cond_29
    if-ltz p5, :cond_2e

    .line 3720
    nop

    .line 3721
    move v2, p5

    goto :goto_3a

    :cond_2e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v2

    .line 3722
    .local v2, "uid":I
    :goto_3a
    if-ltz v2, :cond_53

    .line 3726
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v4, Landroid/os/WorkSource;

    .line 3727
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 3726
    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_52} :catch_54

    .line 3728
    return-void

    .line 3731
    .end local v1    # "unimportant":Z
    .end local v2    # "uid":I
    :cond_53
    goto :goto_55

    .line 3730
    :catch_54
    move-exception v1

    .line 3734
    :goto_55
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3735
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .registers 44
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)Z"
        }
    .end annotation

    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 3128
    const/4 v13, 0x0

    move v0, v13

    .line 3132
    .local v0, "hasWakeup":Z
    :goto_6
    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x1

    if-lez v1, :cond_188

    .line 3133
    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 3134
    .local v10, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v1, v10, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_20

    .line 3136
    goto/16 :goto_188

    .line 3141
    :cond_20
    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3143
    invoke-virtual {v10}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v11

    .line 3144
    .local v11, "N":I
    move/from16 v21, v0

    move v0, v13

    .local v0, "i":I
    .local v21, "hasWakeup":Z
    :goto_2c
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    if-ge v8, v11, :cond_17f

    .line 3145
    invoke-virtual {v10, v8}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v9

    .line 3147
    .local v9, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_68

    .line 3150
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    .line 3151
    .local v3, "lastTime":J
    iget v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-direct {v15, v0}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 3152
    .local v5, "minTime":J
    cmp-long v0, v3, v1

    if-ltz v0, :cond_68

    cmp-long v0, p2, v5

    if-gez v0, :cond_68

    .line 3156
    iput-wide v5, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v5, v9, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 3157
    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_60

    .line 3158
    iput-wide v5, v9, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 3160
    :cond_60
    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 3171
    invoke-direct {v15, v9, v12, v13}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 3172
    goto :goto_8b

    .line 3175
    .end local v3    # "lastTime":J
    .end local v5    # "minTime":J
    :cond_68
    invoke-direct {v15, v9}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 3180
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v1, v9, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3181
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-nez v0, :cond_87

    .line 3182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 3183
    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3185
    :cond_87
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3186
    nop

    .line 3144
    .end local v0    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_8b
    move/from16 v26, v8

    move-object/from16 v27, v10

    move/from16 v36, v11

    move v2, v12

    move/from16 v34, v13

    move-object v1, v15

    goto/16 :goto_171

    .line 3189
    .restart local v9    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_97
    iput v12, v9, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3192
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmIsAllowedSend(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 3193
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3196
    :cond_a6
    iget v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b8

    .line 3197
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_b2

    move v0, v12

    goto :goto_b3

    :cond_b2
    move v0, v13

    :goto_b3
    iget-object v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 3200
    :cond_b8
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v3, 0x0

    if-ne v0, v9, :cond_c5

    .line 3201
    iput-object v3, v15, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3202
    invoke-virtual {v15, v13}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3205
    :cond_c5
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne v0, v9, :cond_ce

    .line 3206
    iput-object v3, v15, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3207
    invoke-virtual {v15, v13}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3212
    :cond_ce
    iget-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_151

    .line 3215
    iget v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v0, v0

    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v2, p2, v2

    iget-wide v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3218
    iget v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v0, v0

    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v22, v0, v2

    .line 3219
    .local v22, "delta":J
    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v24, v0, v22

    .line 3220
    .local v24, "nextElapsed":J
    iget v6, v9, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v16, v0, v22

    iget-wide v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 3221
    move-wide/from16 v0, p2

    move-wide/from16 v18, v2

    move-wide/from16 v2, v24

    move-wide/from16 v26, v4

    move-wide/from16 v4, v18

    invoke-static/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v18

    iget-wide v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v7, v9, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/16 v20, 0x0

    const/16 v28, 0x0

    iget v2, v9, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    const/16 v29, 0x1

    iget-object v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v1, v9, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iget v0, v9, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v14, v9, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 3220
    move/from16 v30, v0

    move-object v0, v15

    move-object/from16 v31, v1

    move v1, v6

    move/from16 v32, v2

    move-object/from16 v33, v3

    move-wide/from16 v2, v16

    move-wide/from16 v16, v4

    move-wide/from16 v4, v24

    move-object/from16 v34, v7

    move-wide/from16 v6, v26

    move/from16 v26, v8

    move-object/from16 v35, v9

    move-wide/from16 v8, v18

    .end local v8    # "i":I
    .end local v9    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v26, "i":I
    .local v35, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v27, v10

    move/from16 v36, v11

    move-wide/from16 v10, v16

    .end local v10    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v11    # "N":I
    .local v27, "batch":Lcom/android/server/AlarmManagerService$Batch;
    .local v36, "N":I
    move-object/from16 v12, v34

    move/from16 v34, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v28

    move/from16 v15, v32

    move/from16 v16, v29

    move-object/from16 v17, v33

    move-object/from16 v18, v31

    move/from16 v19, v30

    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .end local v22    # "delta":J
    .end local v24    # "nextElapsed":J
    goto :goto_15b

    .line 3226
    .end local v26    # "i":I
    .end local v27    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v35    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v36    # "N":I
    .restart local v8    # "i":I
    .restart local v9    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v10    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v11    # "N":I
    :cond_151
    move/from16 v26, v8

    move-object/from16 v35, v9

    move-object/from16 v27, v10

    move/from16 v36, v11

    move/from16 v34, v13

    .end local v8    # "i":I
    .end local v9    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v10    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v11    # "N":I
    .restart local v26    # "i":I
    .restart local v27    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v35    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v36    # "N":I
    :goto_15b
    move-object/from16 v0, v35

    iget-boolean v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    .end local v35    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v1, :cond_164

    .line 3227
    const/4 v1, 0x1

    .line 3231
    .end local v21    # "hasWakeup":Z
    .local v1, "hasWakeup":Z
    move/from16 v21, v1

    .end local v1    # "hasWakeup":Z
    .restart local v21    # "hasWakeup":Z
    :cond_164
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_16e

    .line 3232
    move-object/from16 v1, p0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_171

    .line 3144
    :cond_16e
    move-object/from16 v1, p0

    const/4 v2, 0x1

    :goto_171
    add-int/lit8 v0, v26, 0x1

    .end local v26    # "i":I
    .local v0, "i":I
    move-object/from16 v14, p1

    move-object v15, v1

    move v12, v2

    move-object/from16 v10, v27

    move/from16 v13, v34

    move/from16 v11, v36

    goto/16 :goto_2c

    .line 3235
    .end local v0    # "i":I
    .end local v27    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v36    # "N":I
    :cond_17f
    move/from16 v34, v13

    move-object v1, v15

    .line 3128
    move-object/from16 v14, p1

    move/from16 v0, v21

    goto/16 :goto_6

    .line 3239
    .end local v21    # "hasWakeup":Z
    .local v0, "hasWakeup":Z
    :cond_188
    :goto_188
    move v2, v12

    move-object v1, v15

    iget v3, v1, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 3240
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 3241
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3249
    return v0
.end method
