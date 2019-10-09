.class public Lcom/android/server/ScreenOnMonitor;
.super Ljava/lang/Object;
.source "ScreenOnMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;
    }
.end annotation


# static fields
.field private static final AVG_MAX_COUNT:J = 0x32L

.field public static final BLOCK_SCREEN_ON_BEGIN:I = 0x2

.field public static final BLOCK_SCREEN_ON_END:I = 0x3

.field public static final DATE:Ljava/util/Date;

.field public static final FINGERPRINT_AUTHENTICATED:I = 0x5

.field public static final FINGERPRINT_DOWN:I = 0x4

.field private static final INTERVAL_REPORT_TIME:J = 0xdbba00L

.field public static final KEYGUARD_DRAWN:I = 0x6

.field public static final KEYGUARD_EXIT_ANIM:I = 0x8

.field public static final KEYGUARD_GOING_AWAY:I = 0x7

.field private static final MSG_RECORD_TIME:I = 0x3

.field private static final MSG_REPORT:I = 0x5

.field private static final MSG_SCREEN_ON_TIMEOUT:I = 0x4

.field private static final MSG_START_MONITOR:I = 0x1

.field private static final MSG_STOP_MONITOR:I = 0x2

.field private static PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String; = null

.field private static final REPORT_DELAY:J = 0x7d0L

.field private static final SCREEN_ON_TIMEOUT:J = 0x3e8L

.field public static final SET_DISPLAY_STATE_BEGIN:I = 0x0

.field public static final SET_DISPLAY_STATE_END:I = 0x1

.field public static final SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final STABLE_SUPPORT_DEVICE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ScreenOnMonitor"

.field private static final TYPE_WAKE_SOURCE_DEFAULT:I = -0x1

.field private static final TYPE_WAKE_SOURCE_DP_CENTER:I = 0x2

.field private static final TYPE_WAKE_SOURCE_KEYGUARD_FINGER_PASS:I = 0x4

.field private static final TYPE_WAKE_SOURCE_KEYGUARD_NOTIFICATION:I = 0x3

.field private static final TYPE_WAKE_SOURCE_LID:I = 0x5

.field private static final TYPE_WAKE_SOURCE_POWER:I = 0x1

.field private static final TYPE_WAKE_SOURCE_TOTAL:I

.field private static volatile sInstance:Lcom/android/server/ScreenOnMonitor;


# instance fields
.field private mAvgCount:[I

.field private mBlockScreenOnBegin:J

.field private mBlockScreenOnEnd:J

.field private mDisplayBrightness:I

.field private mDisplayState:I

.field private mFingerDown:J

.field private mFingerSuccess:J

.field private mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

.field private mKeyExitAnim:J

.field private mKeyGoingAway:J

.field private mKeyguardDrawn:J

.field private mLastReportTime:J

.field private mNeedRecord:[Z

.field private mSetDisplayStateBegin:J

.field private mSetDisplayStateEnd:J

.field private mStartTime:J

.field private mStopTime:J

.field private mTimeStamp:J

.field private mTimeoutSummary:Ljava/lang/String;

.field private mTotalBlockScreenOnTime:[J

.field private mTotalFingerAllTime:J

.field private mTotalFingerAvgCount:I

.field private mTotalFingerAway2Exit:J

.field private mTotalFingerAway2On:J

.field private mTotalFingerBlock2KeyDrawn:J

.field private mTotalFingerBlockScreenOnTime:J

.field private mTotalFingerDisplayOnTime:J

.field private mTotalFingerDown2SuccessTime:J

.field private mTotalFingerExit2Draw:J

.field private mTotalFingerSuccess2WakeTime:J

.field private mTotalFingerWake2Away:J

.field private mTotalFingerWake2BlockTime:J

.field private mTotalScreenOnTime:[J

.field private mTotalSetDisplayTime:[J

.field private mTypeNeedRecordSb:Ljava/lang/StringBuilder;

.field private mUploadVersion:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Lcom/android/server/ScreenOnMonitor$1;

    invoke-direct {v0}, Lcom/android/server/ScreenOnMonitor$1;-><init>()V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->STABLE_SUPPORT_DEVICE:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 76
    const-string/jumbo v0, "persist.sys.screenon"

    sput-object v0, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    .line 82
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    .line 92
    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_e2

    iput-object v2, p0, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    .line 93
    new-array v2, v1, [J

    fill-array-data v2, :array_f2

    iput-object v2, p0, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    .line 94
    new-array v2, v1, [J

    fill-array-data v2, :array_10e

    iput-object v2, p0, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    .line 95
    new-array v2, v1, [J

    fill-array-data v2, :array_12a

    iput-object v2, p0, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    .line 96
    new-array v1, v1, [Z

    fill-array-data v1, :array_146

    iput-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    .line 99
    iput v0, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    .line 100
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerDown2SuccessTime:J

    .line 101
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSuccess2WakeTime:J

    .line 102
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerWake2BlockTime:J

    .line 103
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlockScreenOnTime:J

    .line 104
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerWake2Away:J

    .line 105
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAway2Exit:J

    .line 106
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerExit2Draw:J

    .line 107
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAllTime:J

    .line 108
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerDisplayOnTime:J

    .line 109
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlock2KeyDrawn:J

    .line 110
    iput-wide v1, p0, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAway2On:J

    .line 140
    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->isDisableUpload()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 141
    return-void

    .line 143
    :cond_52
    sget-object v1, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "propScreenOnUpload":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_a6

    .line 145
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "props":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a6

    .line 147
    aget-object v4, v2, v0

    .line 148
    .local v4, "needRecord":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_99

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    array-length v6, v6

    if-ne v5, v6, :cond_99

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    .line 150
    move v5, v0

    .line 150
    .local v5, "i":I
    :goto_82
    iget-object v6, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    array-length v6, v6

    if-ge v5, v6, :cond_a2

    .line 151
    iget-object v6, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_93

    move v7, v3

    goto :goto_94

    :cond_93
    move v7, v0

    :goto_94
    aput-boolean v7, v6, v5

    .line 150
    add-int/lit8 v5, v5, 0x1

    goto :goto_82

    .line 154
    .end local v5    # "i":I
    :cond_99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "000000"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    .line 156
    :cond_a2
    aget-object v0, v2, v3

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    .line 159
    .end local v2    # "props":[Ljava/lang/String;
    .end local v4    # "needRecord":Ljava/lang/String;
    :cond_a6
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 160
    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "000000"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    .line 163
    :cond_bb
    new-instance v0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;-><init>(Lcom/android/server/ScreenOnMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    .line 164
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "power"

    .line 165
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 166
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v2, "ScreenOnMonitor"

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 167
    return-void

    nop

    nop

    :array_e2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_10e
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_12a
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_146
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/ScreenOnMonitor;Lcom/android/internal/os/SomeArgs;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;
    .param p1, "x1"    # Lcom/android/internal/os/SomeArgs;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleStartMonitor(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ScreenOnMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;
    .param p1, "x1"    # Z

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleStopMonitor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ScreenOnMonitor;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ScreenOnMonitor;->handleRecordTime(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ScreenOnMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;

    .line 34
    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->handleScreenOnTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ScreenOnMonitor;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ScreenOnMonitor;
    .param p1, "x1"    # Z

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/ScreenOnMonitor;->handleReport(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/ScreenOnMonitor;
    .registers 2

    .line 129
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    if-nez v0, :cond_17

    .line 130
    const-class v0, Lcom/android/server/ScreenOnMonitor;

    monitor-enter v0

    .line 131
    :try_start_7
    sget-object v1, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    if-nez v1, :cond_12

    .line 132
    new-instance v1, Lcom/android/server/ScreenOnMonitor;

    invoke-direct {v1}, Lcom/android/server/ScreenOnMonitor;-><init>()V

    sput-object v1, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    .line 134
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 136
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->sInstance:Lcom/android/server/ScreenOnMonitor;

    return-object v0
.end method

.method private getScreenOnDetail()Ljava/lang/String;
    .registers 11

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 560
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "totalTime":Ljava/lang/String;
    goto :goto_39

    .line 563
    .end local v2    # "totalTime":Ljava/lang/String;
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long v6, v0, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "+ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    .restart local v2    # "totalTime":Ljava/lang/String;
    :goto_39
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_57

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    iget-wide v8, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "setDisplayStateTime":Ljava/lang/String;
    :goto_56
    goto :goto_74

    .line 569
    .end local v3    # "setDisplayStateTime":Ljava/lang/String;
    :cond_57
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_73

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    sub-long v6, v0, v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "+ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_56

    .line 572
    :cond_73
    move-object v3, v2

    .line 576
    .restart local v3    # "setDisplayStateTime":Ljava/lang/String;
    :goto_74
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_92

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    iget-wide v7, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "blockScreenOnTime":Ljava/lang/String;
    :goto_91
    goto :goto_af

    .line 579
    .end local v4    # "blockScreenOnTime":Ljava/lang/String;
    :cond_92
    iget-wide v6, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_ae

    .line 580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "+ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_91

    .line 582
    :cond_ae
    move-object v4, v2

    .line 586
    .restart local v4    # "blockScreenOnTime":Ljava/lang/String;
    :goto_af
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " setDisp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " blockScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getTimeoutSummary()Ljava/lang/String;
    .registers 5

    .line 531
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 532
    const-string v0, "Abnormal in setting display state"

    return-object v0

    .line 535
    :cond_11
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 536
    const-string v0, "Abnormal in blocking screen on"

    return-object v0

    .line 539
    :cond_20
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    .line 540
    const-string v0, "Abnormal in setting brightness"

    return-object v0

    .line 543
    :cond_2f
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    .line 544
    const-string v0, "Abnormal before setting screen state"

    return-object v0

    .line 547
    :cond_38
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_41

    .line 548
    const-string v0, "Abnormal before setting display state"

    return-object v0

    .line 550
    :cond_41
    const-string v0, "Abnormal in setting display state and blocking screen on"

    return-object v0
.end method

.method private getWakeupSrcIndex(Ljava/lang/String;)I
    .registers 9
    .param p1, "wakeSrc"    # Ljava/lang/String;

    .line 512
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_62

    goto :goto_58

    :sswitch_e
    const-string/jumbo v0, "keyguard_screenon_notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    move v0, v5

    goto :goto_59

    :sswitch_19
    const-string/jumbo v0, "lid switch open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x6

    goto :goto_59

    :sswitch_24
    const-string v0, "android.policy:LID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    move v0, v4

    goto :goto_59

    :sswitch_2e
    const-string v0, "android.policy:POWER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    goto :goto_59

    :sswitch_38
    const-string/jumbo v0, "miui.policy:FINGERPRINT_DPAD_CENTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    move v0, v3

    goto :goto_59

    :sswitch_43
    const-string v0, "android.policy:FINGERPRINT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    move v0, v2

    goto :goto_59

    :sswitch_4d
    const-string/jumbo v0, "keyguard_screenon_finger_pass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    move v0, v1

    goto :goto_59

    :cond_58
    :goto_58
    move v0, v6

    :goto_59
    packed-switch v0, :pswitch_data_80

    .line 526
    return v6

    .line 524
    :pswitch_5d
    return v4

    .line 521
    :pswitch_5e
    return v2

    .line 518
    :pswitch_5f
    return v1

    .line 516
    :pswitch_60
    return v5

    .line 514
    :pswitch_61
    return v3

    :sswitch_data_62
    .sparse-switch
        -0x38cb28d4 -> :sswitch_4d
        -0x176113a5 -> :sswitch_43
        -0xb533fe0 -> :sswitch_38
        -0x80fc244 -> :sswitch_2e
        0x29481cfe -> :sswitch_24
        0x295d7b9d -> :sswitch_19
        0x4e628586 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5e
        :pswitch_5d
        :pswitch_5d
    .end packed-switch
.end method

.method private handleRecordTime(IJ)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "time"    # J

    .line 282
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 283
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    .line 284
    return-void

    .line 285
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    .line 286
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    .line 287
    return-void

    .line 290
    :cond_c
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 291
    return-void

    .line 294
    :cond_15
    packed-switch p1, :pswitch_data_70

    :pswitch_18
    goto :goto_6f

    .line 326
    :pswitch_19
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6f

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6f

    .line 327
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    goto :goto_6f

    .line 321
    :pswitch_28
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6f

    .line 322
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    goto :goto_6f

    .line 311
    :pswitch_31
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6f

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6f

    .line 312
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    goto :goto_6f

    .line 316
    :pswitch_40
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6f

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6f

    .line 317
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    goto :goto_6f

    .line 306
    :pswitch_4f
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6f

    .line 307
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    goto :goto_6f

    .line 301
    :pswitch_58
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6f

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6f

    .line 302
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    goto :goto_6f

    .line 296
    :pswitch_67
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6f

    .line 297
    iput-wide p2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    .line 331
    :cond_6f
    :goto_6f
    return-void

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_67
        :pswitch_58
        :pswitch_4f
        :pswitch_40
        :pswitch_18
        :pswitch_18
        :pswitch_31
        :pswitch_28
        :pswitch_19
    .end packed-switch
.end method

.method private handleReport(Z)V
    .registers 103
    .param p1, "hasOn"    # Z

    move-object/from16 v1, p0

    .line 340
    move/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 341
    .local v3, "curTime":J
    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_13

    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    goto :goto_14

    :cond_13
    move-wide v5, v3

    :goto_14
    iput-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    .line 342
    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    iget-wide v9, v1, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long/2addr v5, v9

    .line 343
    .local v5, "block2keyDrawn":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ScreenOnMonitor;->getScreenOnDetail()Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "screenOnDetail":Ljava/lang/String;
    const-string v0, "ScreenOnMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " block2keyDrawn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " hasOn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    if-eqz v0, :cond_82

    .line 347
    iget-wide v10, v1, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    cmp-long v0, v10, v7

    if-eqz v0, :cond_55

    iget-wide v10, v1, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    sub-long v10, v3, v10

    const-wide/32 v12, 0xdbba00

    cmp-long v0, v10, v12

    if-lez v0, :cond_7f

    .line 348
    :cond_55
    iput-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mLastReportTime:J

    .line 349
    new-instance v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    .line 350
    .local v0, "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    iget-object v10, v1, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTimeoutSummary(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, v9}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setmTimeOutDetail(Ljava/lang/String;)V

    .line 352
    iget-object v10, v1, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setWakeSource(Ljava/lang/String;)V

    .line 353
    iget-wide v10, v1, Lcom/android/server/ScreenOnMonitor;->mTimeStamp:J

    invoke-direct {v1, v10, v11}, Lcom/android/server/ScreenOnMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTimeStamp(Ljava/lang/String;)V

    .line 354
    const-string/jumbo v10, "lt_screen_on"

    invoke-virtual {v0, v10}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v10

    invoke-virtual {v10, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    .line 357
    .end local v0    # "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    :cond_7f
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    .line 361
    :cond_82
    if-eqz v2, :cond_548

    iget-wide v10, v1, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-wide v12, v1, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    cmp-long v0, v10, v12

    if-gez v0, :cond_548

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    .line 362
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_548

    .line 364
    iget-wide v10, v1, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    sub-long/2addr v10, v14

    .line 365
    .local v10, "screenOnTime":J
    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    iget-wide v12, v1, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    sub-long/2addr v14, v12

    .line 366
    .local v14, "setDisplayTime":J
    iget-wide v12, v1, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    iget-wide v7, v1, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    sub-long/2addr v12, v7

    .line 368
    .local v12, "blockScreenOnTime":J
    iget-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    const/4 v7, 0x0

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_cf

    .line 369
    iget-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v8, v0, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v7

    .line 370
    iget-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    aget-wide v20, v0, v7

    add-long v20, v20, v10

    aput-wide v20, v0, v7

    .line 371
    iget-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    aget-wide v20, v0, v7

    add-long v20, v20, v14

    aput-wide v20, v0, v7

    .line 372
    iget-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    aget-wide v20, v0, v7

    add-long v20, v20, v12

    aput-wide v20, v0, v7

    .line 375
    :cond_cf
    iget-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v0, v0, v7

    int-to-long v7, v0

    const-wide/16 v20, 0x32

    cmp-long v0, v7, v20

    if-nez v0, :cond_157

    .line 376
    new-instance v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    .line 377
    .restart local v0    # "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    iget-object v8, v1, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    const/16 v22, 0x0

    aget-wide v23, v8, v22

    iget-object v8, v1, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v8, v8, v22

    int-to-long v7, v8

    div-long v7, v23, v7

    invoke-virtual {v0, v7, v8}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTotalTime(J)V

    .line 379
    iget-object v7, v1, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    aget-wide v7, v7, v22

    iget-object v2, v1, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v2, v2, v22

    move-wide/from16 v25, v3

    int-to-long v2, v2

    .line 379
    .end local v3    # "curTime":J
    .local v25, "curTime":J
    div-long/2addr v7, v2

    invoke-virtual {v0, v7, v8}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setSetDisplayTime(J)V

    .line 381
    iget-object v2, v1, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    aget-wide v2, v2, v22

    iget-object v4, v1, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v4, v4, v22

    int-to-long v7, v4

    div-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setBlockScreenTime(J)V

    .line 383
    const-string v2, "avg_screen_on"

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    .line 385
    iget-object v2, v1, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    aput-wide v3, v2, v7

    .line 386
    iget-object v2, v1, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    aput-wide v3, v2, v7

    .line 387
    iget-object v2, v1, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    aput-wide v3, v2, v7

    .line 388
    iget-object v2, v1, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aput v7, v2, v7

    .line 389
    iget-object v2, v1, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    aput-boolean v7, v2, v7

    .line 390
    iget-object v2, v1, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-virtual {v2, v7, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 391
    sget-object v2, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v0    # "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    goto :goto_159

    .line 396
    .end local v25    # "curTime":J
    .restart local v3    # "curTime":J
    :cond_157
    move-wide/from16 v25, v3

    .line 396
    .end local v3    # "curTime":J
    .restart local v25    # "curTime":J
    :goto_159
    iget-object v0, v1, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/ScreenOnMonitor;->getWakeupSrcIndex(Ljava/lang/String;)I

    move-result v2

    .line 400
    .local v2, "index":I
    const/4 v0, 0x4

    if-ne v2, v0, :cond_454

    iget-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-eqz v0, :cond_454

    .line 401
    iget-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_173

    iget-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    goto :goto_175

    :cond_173
    iget-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    :goto_175
    iput-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    .line 402
    iget-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_182

    iget-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    goto :goto_184

    :cond_182
    move-wide/from16 v3, v25

    :goto_184
    iput-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    .line 403
    iget-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_18f

    iget-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    goto :goto_191

    :cond_18f
    move-wide/from16 v3, v25

    :goto_191
    iput-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    .line 404
    iget-wide v3, v1, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    iget-wide v7, v1, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    sub-long/2addr v3, v7

    .line 405
    .local v3, "authen":J
    iget-wide v7, v1, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    move-object/from16 v27, v9

    move-wide/from16 v28, v10

    iget-wide v9, v1, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    .line 405
    .end local v9    # "screenOnDetail":Ljava/lang/String;
    .end local v10    # "screenOnTime":J
    .local v27, "screenOnDetail":Ljava/lang/String;
    .local v28, "screenOnTime":J
    sub-long/2addr v7, v9

    .line 406
    .local v7, "suc2wake":J
    iget-wide v9, v1, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    move-wide/from16 v30, v5

    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    .line 406
    .end local v5    # "block2keyDrawn":J
    .local v30, "block2keyDrawn":J
    sub-long/2addr v9, v5

    .line 407
    .local v9, "wake2block":J
    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    move-wide/from16 v32, v14

    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    .line 407
    .end local v14    # "setDisplayTime":J
    .local v32, "setDisplayTime":J
    sub-long/2addr v5, v14

    .line 408
    .local v5, "all":J
    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    move-wide/from16 v34, v5

    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    .line 408
    .end local v5    # "all":J
    .local v34, "all":J
    sub-long/2addr v14, v5

    .line 409
    .local v14, "wake2away":J
    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    move-wide/from16 v36, v14

    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    .line 409
    .end local v14    # "wake2away":J
    .local v36, "wake2away":J
    sub-long/2addr v5, v14

    .line 410
    .local v5, "away2exit":J
    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    move-wide/from16 v38, v5

    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    .line 410
    .end local v5    # "away2exit":J
    .local v38, "away2exit":J
    sub-long/2addr v14, v5

    .line 411
    .local v14, "exit2draw":J
    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    move-wide/from16 v40, v14

    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    .line 411
    .end local v14    # "exit2draw":J
    .local v40, "exit2draw":J
    sub-long/2addr v5, v14

    .line 412
    .local v5, "draw2un":J
    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    move-wide/from16 v42, v5

    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    .line 412
    .end local v5    # "draw2un":J
    .local v42, "draw2un":J
    sub-long/2addr v14, v5

    .line 413
    .local v14, "wake2disp":J
    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    move-wide/from16 v44, v14

    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    .line 413
    .end local v14    # "wake2disp":J
    .local v44, "wake2disp":J
    sub-long/2addr v5, v14

    .line 414
    .local v5, "on2exit":J
    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    move-wide/from16 v46, v5

    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    .line 414
    .end local v5    # "on2exit":J
    .local v46, "on2exit":J
    sub-long/2addr v14, v5

    .line 415
    .local v14, "exit2un":J
    iget-wide v5, v1, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    move-wide/from16 v48, v14

    iget-wide v14, v1, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    .line 415
    .end local v14    # "exit2un":J
    .local v48, "exit2un":J
    sub-long/2addr v5, v14

    .line 416
    .local v5, "away2on":J
    const-string v0, "ScreenOnMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fingerDown2suc2wake="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "; wake2block2un="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "; wake2away2exit2drawn2un="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v36

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v36    # "wake2away":J
    .local v14, "wake2away":J
    move/from16 v50, v2

    const-string v2, ","

    .line 416
    .end local v2    # "index":I
    .local v50, "index":I
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v51, v9

    move-wide/from16 v9, v38

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 416
    .end local v38    # "away2exit":J
    .local v9, "away2exit":J
    .local v51, "wake2block":J
    const-string v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v40

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 416
    .end local v40    # "exit2draw":J
    .local v1, "exit2draw":J
    move-wide/from16 v53, v1

    const-string v1, ","

    .line 416
    .end local v1    # "exit2draw":J
    .local v53, "exit2draw":J
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v42

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 416
    .end local v42    # "draw2un":J
    .local v1, "draw2un":J
    move-wide/from16 v55, v1

    const-string v1, "; wake2disp2on2exit2un="

    .line 416
    .end local v1    # "draw2un":J
    .local v55, "draw2un":J
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v44

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 416
    .end local v44    # "wake2disp":J
    .local v1, "wake2disp":J
    move-wide/from16 v57, v1

    const-string v1, ","

    .line 416
    .end local v1    # "wake2disp":J
    .local v57, "wake2disp":J
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v32

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 416
    .end local v32    # "setDisplayTime":J
    .local v1, "setDisplayTime":J
    move-wide/from16 v59, v1

    const-string v1, ","

    .line 416
    .end local v1    # "setDisplayTime":J
    .local v59, "setDisplayTime":J
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v46

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 416
    .end local v46    # "on2exit":J
    .local v1, "on2exit":J
    move-wide/from16 v61, v1

    const-string v1, ","

    .line 416
    .end local v1    # "on2exit":J
    .local v61, "on2exit":J
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v48

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 416
    .end local v48    # "exit2un":J
    .local v1, "exit2un":J
    move-wide/from16 v63, v1

    const-string v1, "; away2on:"

    .line 416
    .end local v1    # "exit2un":J
    .local v63, "exit2un":J
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " all="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v34

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v34    # "all":J
    .local v1, "all":J
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-wide/16 v18, 0x0

    cmp-long v0, v3, v18

    if-lez v0, :cond_290

    move-wide/from16 v16, v3

    goto :goto_292

    :cond_290
    const-wide/16 v16, 0x3e8

    :goto_292
    move-wide/from16 v3, v16

    .line 422
    cmp-long v0, v5, v18

    if-lez v0, :cond_29b

    move-wide/from16 v16, v5

    goto :goto_29d

    :cond_29b
    move-wide/from16 v16, v18

    :goto_29d
    move-wide/from16 v5, v16

    .line 423
    cmp-long v0, v7, v18

    if-lez v0, :cond_2f8

    cmp-long v0, v12, v18

    if-lez v0, :cond_2f8

    cmp-long v0, v14, v18

    if-lez v0, :cond_2f8

    cmp-long v0, v9, v18

    if-lez v0, :cond_2f8

    .line 424
    move-wide/from16 v16, v53

    move-object/from16 v11, p0

    iget v0, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    .line 424
    .end local v53    # "exit2draw":J
    .local v16, "exit2draw":J
    add-int/lit8 v0, v0, 0x1

    iput v0, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    .line 425
    move-wide/from16 v65, v5

    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerDown2SuccessTime:J

    .line 425
    .end local v5    # "away2on":J
    .local v65, "away2on":J
    add-long/2addr v5, v3

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerDown2SuccessTime:J

    .line 426
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSuccess2WakeTime:J

    add-long/2addr v5, v7

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSuccess2WakeTime:J

    .line 427
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerWake2BlockTime:J

    add-long v5, v5, v51

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerWake2BlockTime:J

    .line 428
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlockScreenOnTime:J

    add-long/2addr v5, v12

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlockScreenOnTime:J

    .line 429
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerDisplayOnTime:J

    add-long v5, v5, v59

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerDisplayOnTime:J

    .line 430
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAllTime:J

    add-long/2addr v5, v1

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAllTime:J

    .line 431
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlock2KeyDrawn:J

    add-long v5, v5, v30

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlock2KeyDrawn:J

    .line 432
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerWake2Away:J

    add-long/2addr v5, v14

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerWake2Away:J

    .line 433
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAway2Exit:J

    add-long/2addr v5, v9

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAway2Exit:J

    .line 434
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerExit2Draw:J

    add-long v5, v5, v16

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerExit2Draw:J

    .line 435
    iget-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAway2On:J

    add-long v5, v5, v65

    iput-wide v5, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAway2On:J

    goto :goto_2fe

    .line 437
    .end local v16    # "exit2draw":J
    .end local v65    # "away2on":J
    .restart local v5    # "away2on":J
    .restart local v53    # "exit2draw":J
    :cond_2f8
    move-wide/from16 v65, v5

    move-wide/from16 v16, v53

    move-object/from16 v11, p0

    .line 437
    .end local v5    # "away2on":J
    .end local v53    # "exit2draw":J
    .restart local v16    # "exit2draw":J
    .restart local v65    # "away2on":J
    :goto_2fe
    iget v0, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    int-to-long v5, v0

    cmp-long v0, v5, v20

    if-nez v0, :cond_450

    .line 438
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v0

    .line 440
    .local v5, "jsonObject":Lorg/json/JSONObject;
    move-wide/from16 v67, v1

    :try_start_30d
    iget-wide v0, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerDown2SuccessTime:J

    .line 440
    .end local v1    # "all":J
    .local v67, "all":J
    iget v2, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I
    :try_end_311
    .catch Lorg/json/JSONException; {:try_start_30d .. :try_end_311} :catch_440

    move-wide/from16 v69, v3

    int-to-long v2, v2

    .line 440
    .end local v3    # "authen":J
    .local v69, "authen":J
    :try_start_314
    div-long/2addr v0, v2

    .line 441
    .local v0, "avgDown2Suc":J
    iget-wide v2, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerSuccess2WakeTime:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I
    :try_end_319
    .catch Lorg/json/JSONException; {:try_start_314 .. :try_end_319} :catch_435

    move-wide/from16 v71, v7

    int-to-long v6, v4

    .line 441
    .end local v7    # "suc2wake":J
    .local v71, "suc2wake":J
    :try_start_31c
    div-long/2addr v2, v6

    .line 442
    .local v2, "avgSuc2Wake":J
    iget-wide v6, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerWake2BlockTime:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I
    :try_end_321
    .catch Lorg/json/JSONException; {:try_start_31c .. :try_end_321} :catch_42c

    move-wide/from16 v73, v9

    int-to-long v8, v4

    .line 442
    .end local v9    # "away2exit":J
    .local v73, "away2exit":J
    :try_start_324
    div-long/2addr v6, v8

    .line 443
    .local v6, "avgWake2Block":J
    iget-wide v8, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlockScreenOnTime:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I
    :try_end_329
    .catch Lorg/json/JSONException; {:try_start_324 .. :try_end_329} :catch_425

    move-wide/from16 v75, v14

    int-to-long v14, v4

    .line 443
    .end local v14    # "wake2away":J
    .local v75, "wake2away":J
    :try_start_32c
    div-long/2addr v8, v14

    .line 444
    .local v8, "avgBlcokScreen":J
    iget-wide v14, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerDisplayOnTime:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I
    :try_end_331
    .catch Lorg/json/JSONException; {:try_start_32c .. :try_end_331} :catch_420

    move-wide/from16 v77, v12

    int-to-long v12, v4

    .line 444
    .end local v12    # "blockScreenOnTime":J
    .local v77, "blockScreenOnTime":J
    :try_start_334
    div-long/2addr v14, v12

    move-wide v12, v14

    .line 445
    .local v12, "avgDispOn":J
    iget-wide v14, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAllTime:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move-wide/from16 v79, v12

    int-to-long v12, v4

    .line 445
    .end local v12    # "avgDispOn":J
    .local v79, "avgDispOn":J
    div-long/2addr v14, v12

    move-wide v12, v14

    .line 446
    .local v12, "avgAlltime":J
    iget-wide v14, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerBlock2KeyDrawn:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move-wide/from16 v81, v12

    int-to-long v12, v4

    .line 446
    .end local v12    # "avgAlltime":J
    .local v81, "avgAlltime":J
    div-long/2addr v14, v12

    move-wide v12, v14

    .line 447
    .local v12, "avgBlock2KeyDrawn":J
    iget-wide v14, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerWake2Away:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move-wide/from16 v83, v12

    int-to-long v12, v4

    .line 447
    .end local v12    # "avgBlock2KeyDrawn":J
    .local v83, "avgBlock2KeyDrawn":J
    div-long/2addr v14, v12

    move-wide v12, v14

    .line 448
    .local v12, "avgWake2Away":J
    iget-wide v14, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAway2Exit:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move-wide/from16 v85, v8

    int-to-long v8, v4

    .line 448
    .end local v8    # "avgBlcokScreen":J
    .local v85, "avgBlcokScreen":J
    div-long/2addr v14, v8

    move-wide v8, v14

    .line 449
    .local v8, "avgAway2Exit":J
    iget-wide v14, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerExit2Draw:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I

    move-wide/from16 v87, v6

    int-to-long v6, v4

    .line 449
    .end local v6    # "avgWake2Block":J
    .local v87, "avgWake2Block":J
    div-long/2addr v14, v6

    move-wide v6, v14

    .line 450
    .local v6, "avgExit2Draw":J
    iget-wide v14, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAway2On:J

    iget v4, v11, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I
    :try_end_367
    .catch Lorg/json/JSONException; {:try_start_334 .. :try_end_367} :catch_41d

    int-to-long v10, v4

    :try_start_368
    div-long/2addr v14, v10

    move-wide v10, v14

    .line 451
    .local v10, "avgAway2On":J
    const-string v4, "authenticatedTime"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "##w2a:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "##a2e:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "##e2d"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string/jumbo v4, "wakeupTime"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "authen:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "##suc2wake:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "##w2b:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v89, v0

    move-wide/from16 v0, v87

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v87    # "avgWake2Block":J
    .local v0, "avgWake2Block":J
    .local v89, "avgDown2Suc":J
    const-string v15, "##blockScr:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v91, v0

    move-wide/from16 v0, v85

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 452
    .end local v85    # "avgBlcokScreen":J
    .local v0, "avgBlcokScreen":J
    .local v91, "avgWake2Block":J
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string v4, "ext"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "all:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v93, v0

    move-wide/from16 v0, v81

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v81    # "avgAlltime":J
    .local v0, "avgAlltime":J
    .local v93, "avgBlcokScreen":J
    const-string v15, "##setDisp:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v95, v0

    move-wide/from16 v0, v79

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    .end local v79    # "avgDispOn":J
    .local v0, "avgDispOn":J
    .local v95, "avgAlltime":J
    const-string v15, "##keyDrawn:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v97, v0

    move-wide/from16 v0, v83

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    .end local v83    # "avgBlock2KeyDrawn":J
    .local v0, "avgBlock2KeyDrawn":J
    .local v97, "avgDispOn":J
    const-string v15, "##a2e"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v4

    const-string v14, "fingerprintScreenOn"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v99, v0

    const/4 v1, 0x0

    invoke-virtual {v4, v14, v15, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_411
    .catch Lorg/json/JSONException; {:try_start_368 .. :try_end_411} :catch_419

    .line 457
    .end local v0    # "avgBlock2KeyDrawn":J
    .local v99, "avgBlock2KeyDrawn":J
    move-object/from16 v4, p0

    :try_start_413
    iput v1, v4, Lcom/android/server/ScreenOnMonitor;->mTotalFingerAvgCount:I
    :try_end_415
    .catch Lorg/json/JSONException; {:try_start_413 .. :try_end_415} :catch_417

    .line 460
    .end local v2    # "avgSuc2Wake":J
    .end local v6    # "avgExit2Draw":J
    .end local v8    # "avgAway2Exit":J
    .end local v10    # "avgAway2On":J
    .end local v12    # "avgWake2Away":J
    .end local v89    # "avgDown2Suc":J
    .end local v91    # "avgWake2Block":J
    .end local v93    # "avgBlcokScreen":J
    .end local v95    # "avgAlltime":J
    .end local v97    # "avgDispOn":J
    .end local v99    # "avgBlock2KeyDrawn":J
    goto/16 :goto_461

    .line 458
    :catch_417
    move-exception v0

    goto :goto_44c

    :catch_419
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_44c

    :catch_41d
    move-exception v0

    move-object v4, v11

    goto :goto_44c

    .line 458
    .end local v77    # "blockScreenOnTime":J
    .local v12, "blockScreenOnTime":J
    :catch_420
    move-exception v0

    move-object v4, v11

    move-wide/from16 v77, v12

    .line 458
    .end local v12    # "blockScreenOnTime":J
    .restart local v77    # "blockScreenOnTime":J
    goto :goto_44c

    .line 458
    .end local v75    # "wake2away":J
    .end local v77    # "blockScreenOnTime":J
    .restart local v12    # "blockScreenOnTime":J
    .restart local v14    # "wake2away":J
    :catch_425
    move-exception v0

    move-object v4, v11

    move-wide/from16 v77, v12

    move-wide/from16 v75, v14

    .line 458
    .end local v12    # "blockScreenOnTime":J
    .end local v14    # "wake2away":J
    .restart local v75    # "wake2away":J
    .restart local v77    # "blockScreenOnTime":J
    goto :goto_44c

    .line 458
    .end local v73    # "away2exit":J
    .end local v75    # "wake2away":J
    .end local v77    # "blockScreenOnTime":J
    .restart local v9    # "away2exit":J
    .restart local v12    # "blockScreenOnTime":J
    .restart local v14    # "wake2away":J
    :catch_42c
    move-exception v0

    move-wide/from16 v73, v9

    move-object v4, v11

    move-wide/from16 v77, v12

    move-wide/from16 v75, v14

    .line 458
    .end local v9    # "away2exit":J
    .end local v12    # "blockScreenOnTime":J
    .end local v14    # "wake2away":J
    .restart local v73    # "away2exit":J
    .restart local v75    # "wake2away":J
    .restart local v77    # "blockScreenOnTime":J
    goto :goto_44c

    .line 458
    .end local v71    # "suc2wake":J
    .end local v73    # "away2exit":J
    .end local v75    # "wake2away":J
    .end local v77    # "blockScreenOnTime":J
    .restart local v7    # "suc2wake":J
    .restart local v9    # "away2exit":J
    .restart local v12    # "blockScreenOnTime":J
    .restart local v14    # "wake2away":J
    :catch_435
    move-exception v0

    move-wide/from16 v71, v7

    move-wide/from16 v73, v9

    move-object v4, v11

    move-wide/from16 v77, v12

    move-wide/from16 v75, v14

    .line 458
    .end local v7    # "suc2wake":J
    .end local v9    # "away2exit":J
    .end local v12    # "blockScreenOnTime":J
    .end local v14    # "wake2away":J
    .restart local v71    # "suc2wake":J
    .restart local v73    # "away2exit":J
    .restart local v75    # "wake2away":J
    .restart local v77    # "blockScreenOnTime":J
    goto :goto_44c

    .line 458
    .end local v69    # "authen":J
    .end local v71    # "suc2wake":J
    .end local v73    # "away2exit":J
    .end local v75    # "wake2away":J
    .end local v77    # "blockScreenOnTime":J
    .restart local v3    # "authen":J
    .restart local v7    # "suc2wake":J
    .restart local v9    # "away2exit":J
    .restart local v12    # "blockScreenOnTime":J
    .restart local v14    # "wake2away":J
    :catch_440
    move-exception v0

    move-wide/from16 v69, v3

    move-wide/from16 v71, v7

    move-wide/from16 v73, v9

    move-object v4, v11

    move-wide/from16 v77, v12

    move-wide/from16 v75, v14

    .line 459
    .end local v3    # "authen":J
    .end local v7    # "suc2wake":J
    .end local v9    # "away2exit":J
    .end local v12    # "blockScreenOnTime":J
    .end local v14    # "wake2away":J
    .local v0, "e":Lorg/json/JSONException;
    .restart local v69    # "authen":J
    .restart local v71    # "suc2wake":J
    .restart local v73    # "away2exit":J
    .restart local v75    # "wake2away":J
    .restart local v77    # "blockScreenOnTime":J
    :goto_44c
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 459
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "exit2draw":J
    .end local v51    # "wake2block":J
    .end local v55    # "draw2un":J
    .end local v57    # "wake2disp":J
    .end local v61    # "on2exit":J
    .end local v63    # "exit2un":J
    .end local v65    # "away2on":J
    .end local v67    # "all":J
    .end local v69    # "authen":J
    .end local v71    # "suc2wake":J
    .end local v73    # "away2exit":J
    .end local v75    # "wake2away":J
    goto :goto_461

    .line 463
    .end local v77    # "blockScreenOnTime":J
    .restart local v12    # "blockScreenOnTime":J
    :cond_450
    move-object v4, v11

    move-wide/from16 v77, v12

    .line 463
    .end local v12    # "blockScreenOnTime":J
    .restart local v77    # "blockScreenOnTime":J
    goto :goto_461

    .line 463
    .end local v27    # "screenOnDetail":Ljava/lang/String;
    .end local v28    # "screenOnTime":J
    .end local v30    # "block2keyDrawn":J
    .end local v50    # "index":I
    .end local v59    # "setDisplayTime":J
    .end local v77    # "blockScreenOnTime":J
    .local v2, "index":I
    .local v5, "block2keyDrawn":J
    .local v9, "screenOnDetail":Ljava/lang/String;
    .local v10, "screenOnTime":J
    .restart local v12    # "blockScreenOnTime":J
    .local v14, "setDisplayTime":J
    :cond_454
    move-object v4, v1

    move/from16 v50, v2

    move-wide/from16 v30, v5

    move-object/from16 v27, v9

    move-wide/from16 v28, v10

    move-wide/from16 v77, v12

    move-wide/from16 v59, v14

    .line 463
    .end local v2    # "index":I
    .end local v5    # "block2keyDrawn":J
    .end local v9    # "screenOnDetail":Ljava/lang/String;
    .end local v10    # "screenOnTime":J
    .end local v12    # "blockScreenOnTime":J
    .end local v14    # "setDisplayTime":J
    .restart local v27    # "screenOnDetail":Ljava/lang/String;
    .restart local v28    # "screenOnTime":J
    .restart local v30    # "block2keyDrawn":J
    .restart local v50    # "index":I
    .restart local v59    # "setDisplayTime":J
    .restart local v77    # "blockScreenOnTime":J
    :goto_461
    const-wide/16 v1, 0x0

    iput-wide v1, v4, Lcom/android/server/ScreenOnMonitor;->mFingerDown:J

    .line 464
    iput-wide v1, v4, Lcom/android/server/ScreenOnMonitor;->mFingerSuccess:J

    .line 465
    iput-wide v1, v4, Lcom/android/server/ScreenOnMonitor;->mKeyGoingAway:J

    .line 466
    iput-wide v1, v4, Lcom/android/server/ScreenOnMonitor;->mKeyExitAnim:J

    .line 467
    iput-wide v1, v4, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    .line 469
    const/4 v0, -0x1

    move/from16 v1, v50

    if-ne v1, v0, :cond_473

    .line 470
    .end local v50    # "index":I
    .local v1, "index":I
    return-void

    .line 472
    :cond_473
    iget-object v0, v4, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_499

    .line 473
    iget-object v0, v4, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 474
    iget-object v0, v4, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    aget-wide v2, v0, v1

    add-long v2, v2, v28

    aput-wide v2, v0, v1

    .line 475
    iget-object v0, v4, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    aget-wide v2, v0, v1

    add-long v2, v2, v59

    aput-wide v2, v0, v1

    .line 476
    iget-object v0, v4, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    aget-wide v2, v0, v1

    add-long v2, v2, v77

    aput-wide v2, v0, v1

    .line 478
    :cond_499
    iget-object v0, v4, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v0, v0, v1

    int-to-long v2, v0

    cmp-long v0, v2, v20

    if-nez v0, :cond_54f

    .line 479
    new-instance v0, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/ScreenOnEvent;-><init>()V

    .line 480
    .local v0, "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    aget-wide v2, v2, v1

    iget-object v5, v4, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v5, v5, v1

    int-to-long v5, v5

    div-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setTotalTime(J)V

    .line 481
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    aget-wide v2, v2, v1

    iget-object v5, v4, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v5, v5, v1

    int-to-long v5, v5

    div-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setSetDisplayTime(J)V

    .line 482
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    aget-wide v2, v2, v1

    iget-object v5, v4, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    aget v5, v5, v1

    int-to-long v5, v5

    div-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setBlockScreenTime(J)V

    .line 483
    sget-object v2, Lmiui/mqsas/sdk/event/ScreenOnEvent;->TYPE_SCREEN_ON:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setScreenOnType(Ljava/lang/String;)V

    .line 484
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/ScreenOnEvent;->setWakeSource(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    .line 486
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mTotalScreenOnTime:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v1

    .line 487
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mTotalSetDisplayTime:[J

    aput-wide v5, v2, v1

    .line 488
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mTotalBlockScreenOnTime:[J

    aput-wide v5, v2, v1

    .line 489
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mAvgCount:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 490
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    aput-boolean v3, v2, v1

    .line 491
    iget-object v2, v4, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 492
    sget-object v2, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/server/ScreenOnMonitor;->mUploadVersion:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ScreenOnMonitor;->needRecordScreenOn()Z

    move-result v2

    if-nez v2, :cond_54f

    .line 495
    sget-object v2, Lcom/android/server/ScreenOnMonitor;->PROPERTY_SCREEN_ON_UPLOAD:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/android/server/ScreenOnMonitor;->mTypeNeedRecordSb:Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .end local v0    # "event":Lmiui/mqsas/sdk/event/ScreenOnEvent;
    .end local v1    # "index":I
    .end local v28    # "screenOnTime":J
    .end local v59    # "setDisplayTime":J
    .end local v77    # "blockScreenOnTime":J
    goto :goto_54f

    .line 500
    .end local v25    # "curTime":J
    .end local v27    # "screenOnDetail":Ljava/lang/String;
    .end local v30    # "block2keyDrawn":J
    .local v3, "curTime":J
    .restart local v5    # "block2keyDrawn":J
    .restart local v9    # "screenOnDetail":Ljava/lang/String;
    :cond_548
    move-wide/from16 v25, v3

    move-wide/from16 v30, v5

    move-object/from16 v27, v9

    move-object v4, v1

    .line 500
    .end local v3    # "curTime":J
    .end local v5    # "block2keyDrawn":J
    .end local v9    # "screenOnDetail":Ljava/lang/String;
    .restart local v25    # "curTime":J
    .restart local v27    # "screenOnDetail":Ljava/lang/String;
    .restart local v30    # "block2keyDrawn":J
    :cond_54f
    :goto_54f
    return-void
.end method

.method private handleScreenOnTimeout()V
    .registers 5

    .line 334
    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->getTimeoutSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    .line 335
    const-string v0, "ScreenOnMonitor"

    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mTimeoutSummary:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 337
    return-void
.end method

.method private handleStartMonitor(Lcom/android/internal/os/SomeArgs;)V
    .registers 6
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .line 237
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_4c

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 257
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 238
    return-void

    .line 241
    :cond_c
    :try_start_c
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    .line 242
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeSource:Ljava/lang/String;

    .line 243
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mTimeStamp:J

    .line 245
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    .line 246
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    .line 247
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mKeyguardDrawn:J

    .line 248
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnEnd:J

    .line 249
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    .line 250
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateEnd:J

    .line 252
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 253
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 255
    :cond_3f
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_4c

    .line 257
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 258
    nop

    .line 259
    return-void

    .line 257
    :catchall_4c
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0
.end method

.method private handleStopMonitor(Z)V
    .registers 6
    .param p1, "report"    # Z

    .line 262
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 263
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 265
    :cond_d
    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3b

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3b

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    goto :goto_3b

    .line 269
    :cond_22
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->removeMessages(I)V

    .line 270
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->removeMessages(I)V

    .line 272
    if-eqz p1, :cond_34

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ScreenOnMonitor;->handleReport(Z)V

    .line 276
    :cond_34
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    .line 277
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mBlockScreenOnBegin:J

    .line 278
    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mSetDisplayStateBegin:J

    .line 279
    return-void

    .line 266
    :cond_3b
    :goto_3b
    return-void
.end method

.method private isDisableUpload()Z
    .registers 3

    .line 596
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/ScreenOnMonitor;->STABLE_SUPPORT_DEVICE:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private needRecordScreenOn()Z
    .registers 6

    .line 503
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mNeedRecord:[Z

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget-boolean v4, v0, v3

    .line 504
    .local v4, "b":Z
    if-eqz v4, :cond_d

    .line 505
    const/4 v0, 0x1

    return v0

    .line 503
    .end local v4    # "b":Z
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 508
    :cond_10
    return v2
.end method

.method private toCalendarTime(J)Ljava/lang/String;
    .registers 5
    .param p1, "now"    # J

    .line 591
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 592
    sget-object v0, Lcom/android/server/ScreenOnMonitor;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/server/ScreenOnMonitor;->DATE:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public recordTime(I)V
    .registers 8
    .param p1, "type"    # I

    .line 199
    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->isDisableUpload()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    return-void

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v2, 0x3

    const/4 v3, -0x1

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 203
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void
.end method

.method public startMonitor(Ljava/lang/String;)V
    .registers 6
    .param p1, "wakeSource"    # Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->isDisableUpload()Z

    move-result v0

    if-nez v0, :cond_39

    iget v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    iget-wide v0, p0, Lcom/android/server/ScreenOnMonitor;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    goto :goto_39

    .line 175
    :cond_14
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 176
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 177
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    return-void

    .line 172
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_39
    :goto_39
    return-void
.end method

.method public stopMonitor(II)V
    .registers 7
    .param p1, "brightness"    # I
    .param p2, "state"    # I

    .line 183
    invoke-direct {p0}, Lcom/android/server/ScreenOnMonitor;->isDisableUpload()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 184
    return-void

    .line 187
    :cond_7
    iget v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    if-eq p2, v1, :cond_1d

    .line 188
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_37

    .line 189
    :cond_1d
    iget v0, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    if-nez v0, :cond_37

    if-eqz p1, :cond_37

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/ScreenOnMonitor;->mStopTime:J

    .line 191
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor;->mHandler:Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    :cond_37
    :goto_37
    iput p1, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayBrightness:I

    .line 195
    iput p2, p0, Lcom/android/server/ScreenOnMonitor;->mDisplayState:I

    .line 196
    return-void
.end method
