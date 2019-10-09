.class Lcom/android/server/AlarmManagerServiceInjector;
.super Ljava/lang/Object;
.source "AlarmManagerServiceInjector.java"


# static fields
.field private static APP_PUSH_PERIOD_TIME:J = 0x0L

.field private static final APP_PUSH_PERIOD_TIME_DELTA:I = 0x3e8

.field private static final DEBUG:Z = true

.field private static final FOREGROUND_APP_ADJ:I = 0x0

.field private static final MAX_APP_PUSH_PERIOD_TIME:I = 0x83d60

.field private static final MIN_APP_PUSH_PERIOD_TIME:I = 0x1d4c0

.field public static MM_BOOTER_TAG:Ljava/lang/String; = null

.field public static MM_HEART_BEAT_TAG:Ljava/lang/String; = null

.field public static MM_PACKAGE:Ljava/lang/String; = null

.field private static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERSIST_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static QQ_HEART_BEAT_TAG:Ljava/lang/String; = null

.field public static QQ_PACKAGE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AlarmManagerServiceInjector"

.field private static final THIRD_PARTY_WAKEUP_RESTRICT_PROP:Ljava/lang/String; = "persist.sys.wakeup_restrict"

.field private static final WAKEUP_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static XMSF_HEART_BEAT_TAG:Ljava/lang/String;

.field public static XMSF_PACKAGE:Ljava/lang/String;

.field private static appPushLeaderLastTriggerElapsed:J

.field private static isPushLeaderLive:Z

.field private static final mAlignedAlarmArray:Landroid/util/SparseBooleanArray;

.field private static final mPushAlarmPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

.field private static final mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    .line 42
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    .line 43
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mAlignedAlarmArray:Landroid/util/SparseBooleanArray;

    .line 44
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 45
    new-instance v0, Lcom/android/server/AlarmManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->WAKEUP_WHITE_LIST:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/android/server/AlarmManagerServiceInjector$2;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerServiceInjector$2;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->PERSIST_PACKAGES:Ljava/util/List;

    .line 324
    const-string v0, "*walarm*:ALARM_ACTION"

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->MM_HEART_BEAT_TAG:Ljava/lang/String;

    .line 325
    const-string v0, "*walarm*:com.tencent.mm/.booter.MMReceivers$AlarmReceiver"

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->MM_BOOTER_TAG:Ljava/lang/String;

    .line 326
    const-string v0, "*walarm*:com.tencent.mobileqq:MSF_"

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->QQ_HEART_BEAT_TAG:Ljava/lang/String;

    .line 327
    const-string v0, "*walarm*:com.xiaomi.push.PING_TIMER"

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->XMSF_HEART_BEAT_TAG:Ljava/lang/String;

    .line 328
    const-string v0, "com.tencent.mobileqq"

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->QQ_PACKAGE:Ljava/lang/String;

    .line 329
    const-string v0, "com.tencent.mm"

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->MM_PACKAGE:Ljava/lang/String;

    .line 330
    const-string v0, "com.xiaomi.xmsf"

    sput-object v0, Lcom/android/server/AlarmManagerServiceInjector;->XMSF_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIfAlarmGenralRistrictApply(II)Z
    .registers 7
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 144
    const/4 v0, 0x0

    const/16 v1, 0x2710

    if-gt p0, v1, :cond_6

    .line 145
    return v0

    .line 148
    :cond_6
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getCurAdjByPid(I)I

    move-result v1

    .line 149
    .local v1, "curAdj":I
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getProcStateByPid(I)I

    move-result v2

    .line 150
    .local v2, "procState":I
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->hasForegroundActivities(I)Z

    move-result v3

    .line 152
    .local v3, "hasForegroundActivities":Z
    if-nez v3, :cond_21

    if-ltz v1, :cond_1f

    const/16 v4, 0xc8

    if-gt v1, v4, :cond_1f

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1f

    goto :goto_21

    .line 156
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_21
    :goto_21
    return v0
.end method

.method private static adjustAlarm(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/ArrayList;JIZ)V
    .registers 13
    .param p0, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "min"    # J
    .param p4, "distance"    # I
    .param p5, "repeat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JIZ)V"
        }
    .end annotation

    .line 388
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 389
    .local v0, "remain":J
    cmp-long v2, v0, p2

    if-gez v2, :cond_c

    .line 390
    return-void

    .line 392
    :cond_c
    invoke-static {p0, p1, p4}, Lcom/android/server/AlarmManagerServiceInjector;->findXmsfHeartBeatAlarm(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/ArrayList;I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v2

    .line 393
    .local v2, "al":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v2, :cond_46

    .line 394
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 395
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 396
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 397
    if-eqz p5, :cond_30

    .line 398
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v5, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v3, v5

    .line 399
    .local v3, "delta":J
    iget-wide v5, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 400
    iget-wide v5, p0, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 401
    .end local v3    # "delta":J
    goto :goto_3c

    .line 402
    :cond_30
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 403
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 404
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 406
    :goto_3c
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mAlignedAlarmArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 408
    :cond_46
    return-void
.end method

.method public static adjustWakeUpAlarmType(Landroid/content/Context;I)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalType"    # I

    .line 74
    if-eqz p1, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    .line 75
    return p1

    .line 77
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 79
    .local v0, "uid":I
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_f

    .line 80
    return p1

    .line 83
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_26

    array-length v3, v1

    if-lez v3, :cond_26

    .line 85
    aget-object v3, v1, v2

    .line 86
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceInjector;->inWakeUpAlarmWhiteList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    return p1

    .line 89
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_26
    const-string/jumbo v3, "persist.sys.wakeup_restrict"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 91
    const-string v2, "AlarmManagerServiceInjector"

    const-string/jumbo v3, "restrict all third party wakeup is set"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p1}, Lcom/android/server/AlarmManagerServiceInjector;->nonWakeUpType(I)I

    move-result v2

    return v2

    .line 95
    :cond_3c
    return p1
.end method

.method private static checkAlarmIsAllowedAddToPushAlarmPendingList(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 7
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "isFinded":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "isFinded":Z
    :goto_4
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 249
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 250
    .local v3, "tmp":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 251
    const/4 v2, 0x1

    .line 248
    .end local v3    # "tmp":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 254
    .end local v0    # "i":I
    :cond_2a
    if-nez v2, :cond_2e

    const/4 v1, 0x1

    nop

    :cond_2e
    return v1
.end method

.method public static checkAlarmIsAllowedSend(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 160
    if-eqz p1, :cond_26

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v0, :cond_7

    goto :goto_26

    .line 161
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 162
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerServiceInjector;->CheckIfAlarmGenralRistrictApply(II)Z

    move-result v3

    .line 161
    invoke-static {v0, v1, v2, v3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isAlarmAllowedLocked(IILjava/lang/String;Z)Z

    move-result v0

    return v0

    .line 160
    :cond_26
    :goto_26
    const/4 v0, 0x1

    return v0
.end method

.method private static checkAlarmOperationIsHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 9
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 211
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .line 212
    .local v0, "powerKeeperPolicy":Lcom/miui/whetstone/PowerKeeperPolicy;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 214
    .local v1, "uid":I
    invoke-virtual {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmFunc(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    .line 215
    return v3

    .line 218
    :cond_12
    invoke-virtual {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmProperty(I)Landroid/content/Intent;

    move-result-object v2

    .line 219
    .local v2, "heartIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 220
    .local v4, "curIntent":Landroid/content/Intent;
    if-eqz v4, :cond_2a

    if-nez v2, :cond_21

    goto :goto_2a

    .line 226
    :cond_21
    invoke-static {v4, v2}, Lcom/android/server/AlarmManagerServiceInjector;->cmpCurPushAlarmPropertyWithHeartBeat(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 227
    return v3

    .line 229
    :cond_28
    const/4 v3, 0x1

    return v3

    .line 222
    :cond_2a
    :goto_2a
    const-string v5, "AlarmManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "curIntent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "heartIntent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v3
.end method

.method private static checkAlarmOperationIsLeaderHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 5
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 234
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .line 236
    .local v0, "powerKeeperPolicy":Lcom/miui/whetstone/PowerKeeperPolicy;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmLeaderUid()I

    move-result v2

    if-ne v1, v2, :cond_2f

    .line 237
    const-string v1, "AlarmManagerServiceInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " alarm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "is aligned leader, now sending all pending alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    .line 239
    return v1

    .line 241
    :cond_2f
    const/4 v1, 0x0

    return v1
.end method

.method public static checkIsNeedAjustTriggerElapsed(Landroid/app/PendingIntent;JJ)J
    .registers 16
    .param p0, "operation"    # Landroid/app/PendingIntent;
    .param p1, "triggerElapsed"    # J
    .param p3, "nowElapsed"    # J

    .line 175
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .line 177
    .local v0, "powerKeeperPolicy":Lcom/miui/whetstone/PowerKeeperPolicy;
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 178
    .local v1, "uid":I
    invoke-virtual {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmFunc(I)Z

    move-result v2

    if-eqz v2, :cond_ca

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    if-nez v2, :cond_14

    goto/16 :goto_ca

    .line 181
    :cond_14
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmLeaderUid()I

    move-result v2

    if-ne v1, v2, :cond_53

    .line 182
    sub-long v2, p1, p3

    .line 183
    .local v2, "tmpDelta":J
    const-wide/32 v4, 0x83d60

    cmp-long v4, v2, v4

    if-gtz v4, :cond_30

    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v2, v4

    if-gez v4, :cond_2b

    goto :goto_30

    .line 187
    :cond_2b
    sput-wide v2, Lcom/android/server/AlarmManagerServiceInjector;->APP_PUSH_PERIOD_TIME:J

    .line 188
    sput-wide p1, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    goto :goto_52

    .line 185
    :cond_30
    :goto_30
    const-string v4, "AlarmManagerServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " tmpDelta = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " is abnormal, ignore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_52
    return-wide p1

    .line 193
    .end local v2    # "tmpDelta":J
    :cond_53
    invoke-virtual {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmProperty(I)Landroid/content/Intent;

    move-result-object v2

    .line 194
    .local v2, "heartIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 195
    .local v3, "curIntent":Landroid/content/Intent;
    invoke-static {v3, v2}, Lcom/android/server/AlarmManagerServiceInjector;->cmpCurPushAlarmPropertyWithHeartBeat(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 196
    return-wide p1

    .line 198
    :cond_62
    sget-object v4, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 199
    sget-wide v4, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    cmp-long v4, p3, v4

    const-wide/16 v5, 0x3e8

    if-lez v4, :cond_9f

    .line 200
    const-string v4, "AlarmManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " nowElapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u3000> LastTriggerElapsed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v8, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-wide v7, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    sget-wide v9, Lcom/android/server/AlarmManagerServiceInjector;->APP_PUSH_PERIOD_TIME:J

    add-long/2addr v7, v9

    sub-long/2addr v7, v5

    return-wide v7

    .line 204
    :cond_9f
    const-string v4, "AlarmManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " nowElapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " < appPushLeaderLastTriggerElapsed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v8, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-wide v7, Lcom/android/server/AlarmManagerServiceInjector;->appPushLeaderLastTriggerElapsed:J

    sub-long/2addr v7, v5

    return-wide v7

    .line 179
    .end local v2    # "heartIntent":Landroid/content/Intent;
    .end local v3    # "curIntent":Landroid/content/Intent;
    :cond_ca
    :goto_ca
    return-wide p1
.end method

.method private static cmpCurPushAlarmPropertyWithHeartBeat(Landroid/content/Intent;Landroid/content/Intent;)Z
    .registers 6
    .param p0, "cur"    # Landroid/content/Intent;
    .param p1, "heart"    # Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "curAction":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "heartAction":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1b

    :cond_1a
    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v2, 0x1

    :goto_1c
    return v2

    .line 171
    :cond_1d
    return v2
.end method

.method public static doAppPushHeartBeatAlignment(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p1, "triggerlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 259
    .local v0, "sTriggerListIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v1, 0x0

    .line 260
    .local v1, "isContainLeader":Z
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_65

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 262
    .local v2, "currentAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmOperationIsHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 263
    goto :goto_5

    .line 266
    :cond_19
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmOperationIsLeaderHeartBeat(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v4

    if-ne v3, v4, :cond_20

    .line 267
    const/4 v1, 0x1

    .line 269
    :cond_20
    sget-boolean v4, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    if-nez v4, :cond_2d

    .line 270
    const-string v3, "AlarmManagerServiceInjector"

    const-string/jumbo v4, "isPushLeaderLive is false, continue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    goto :goto_5

    .line 273
    :cond_2d
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceInjector;->checkAlarmIsAllowedAddToPushAlarmPendingList(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v4

    if-ne v3, v4, :cond_38

    .line 274
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_38
    const-string v3, "AlarmManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alarm remove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_5c

    .line 278
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 280
    :cond_5c
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 283
    .end local v2    # "currentAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_5

    .line 285
    :cond_65
    if-ne v3, v1, :cond_9d

    .line 286
    sget-object v2, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 287
    .local v2, "sPendingListIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 288
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 289
    .local v3, "tmpAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    const-string v4, "AlarmManagerServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "is add to triggerlist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v3    # "tmpAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_6d

    .line 292
    :cond_98
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 294
    .end local v2    # "sPendingListIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_9d
    return-void
.end method

.method public static dumpAlarmAligStat(Ljava/io/PrintWriter;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 297
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    .line 298
    .local v0, "powerKeeperPolicy":Lcom/miui/whetstone/PowerKeeperPolicy;
    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmLeaderUid()I

    move-result v1

    .line 300
    .local v1, "LeaderUid":I
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    const-string v2, "Current Alarm Push HeartBeat Align state: "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    const-string v2, " leader uid = "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 303
    const-string v2, " leader intent = "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppPushAlarmProperty(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 304
    const-string v2, " leader live is = "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceInjector;->isPushLeaderLive:Z

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 306
    const-string v2, "apps has ever aligned: "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    const/4 v2, 0x0

    .line 307
    .local v2, "i":I
    :goto_36
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 308
    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_55

    .line 309
    const-string v3, " uid = "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mUidPushHBAlignHistory:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 307
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 313
    .end local v2    # "i":I
    :cond_58
    const-string/jumbo v2, "recent align alarms stat: "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    sget-object v2, Lcom/android/server/AlarmManagerServiceInjector;->mdelAlarmHistory:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 315
    .local v2, "alarmIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 316
    const-string v3, " alarm = "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_64

    .line 319
    :cond_77
    const-string/jumbo v3, "pending list = "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/AlarmManagerServiceInjector;->mPushAlarmPendingList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 320
    const-string v3, "APP_PUSH_PERIOD_TIME = "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-wide v3, Lcom/android/server/AlarmManagerServiceInjector;->APP_PUSH_PERIOD_TIME:J

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 321
    const-string v3, "APP_PUSH_PERIOD_TIME_DELTA = "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 322
    return-void
.end method

.method static filterPersistPackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "pkgList"    # [Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "filteredPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    array-length v2, p0

    if-lez v2, :cond_1f

    .line 64
    array-length v2, p0

    move v3, v1

    :goto_d
    if-ge v3, v2, :cond_1f

    aget-object v4, p0, v3

    .line 65
    .local v4, "pkg":Ljava/lang/String;
    sget-object v5, Lcom/android/server/AlarmManagerServiceInjector;->PERSIST_PACKAGES:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 66
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 70
    :cond_1f
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static findXmsfHeartBeatAlarm(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/ArrayList;I)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 13
    .param p0, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "distance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;I)",
            "Lcom/android/server/AlarmManagerService$Alarm;"
        }
    .end annotation

    .line 356
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v0, 0x0

    .line 357
    .local v0, "ret":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz p1, :cond_42

    .line 358
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 359
    .local v1, "N":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "ret":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_a
    if-ge v0, v1, :cond_41

    .line 360
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 361
    .local v4, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_3e

    .line 362
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 363
    .local v5, "M":I
    move v6, v2

    .local v6, "j":I
    :goto_1b
    if-ge v6, v5, :cond_3e

    .line 364
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 365
    .local v7, "al":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v7, :cond_3b

    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    sget-object v9, Lcom/android/server/AlarmManagerServiceInjector;->XMSF_HEART_BEAT_TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    sget-object v9, Lcom/android/server/AlarmManagerServiceInjector;->XMSF_PACKAGE:Ljava/lang/String;

    .line 366
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 367
    move-object v3, v7

    .line 368
    goto :goto_3e

    .line 363
    .end local v7    # "al":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 359
    .end local v4    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 374
    .end local v0    # "i":I
    .end local v1    # "N":I
    :cond_41
    move-object v0, v3

    .end local v3    # "ret":Lcom/android/server/AlarmManagerService$Alarm;
    .local v0, "ret":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_42
    if-eqz v0, :cond_53

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-gez v1, :cond_53

    .line 375
    return-object v0

    .line 377
    :cond_53
    const/4 v1, 0x0

    return-object v1
.end method

.method private static inWakeUpAlarmWhiteList(Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/android/server/AlarmManagerServiceInjector;->WAKEUP_WHITE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1a
    goto :goto_6

    .line 128
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static isAlarmAligned(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 338
    sget-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mAlignedAlarmArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static keepAlignedWithXMSF(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)V"
        }
    .end annotation

    .line 416
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-static {p0}, Lcom/android/server/AlarmManagerServiceInjector;->isAlarmAligned(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 417
    return-void

    .line 419
    :cond_7
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    sget-object v1, Lcom/android/server/AlarmManagerServiceInjector;->MM_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    sget-object v1, Lcom/android/server/AlarmManagerServiceInjector;->MM_HEART_BEAT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 420
    const-wide/32 v3, 0xea60

    const v5, 0xea60

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceInjector;->adjustAlarm(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/ArrayList;JIZ)V

    goto :goto_68

    .line 421
    :cond_28
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    sget-object v1, Lcom/android/server/AlarmManagerServiceInjector;->MM_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    sget-object v1, Lcom/android/server/AlarmManagerServiceInjector;->MM_BOOTER_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 422
    const-wide/32 v3, 0xea60

    const v5, 0x1d4c0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceInjector;->adjustAlarm(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/ArrayList;JIZ)V

    goto :goto_68

    .line 423
    :cond_49
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    sget-object v1, Lcom/android/server/AlarmManagerServiceInjector;->QQ_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    sget-object v1, Lcom/android/server/AlarmManagerServiceInjector;->QQ_HEART_BEAT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 424
    const-wide/16 v3, 0x7530

    const v5, 0xea60

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceInjector;->adjustAlarm(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/ArrayList;JIZ)V

    .line 426
    :cond_68
    :goto_68
    return-void
.end method

.method private static nonWakeUpType(I)I
    .registers 2
    .param p0, "type"    # I

    .line 132
    if-eqz p0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    .line 138
    return p0

    .line 134
    :cond_6
    const/4 v0, 0x3

    return v0

    .line 136
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public static recordRTCWakeupInfo(Landroid/content/Context;ILandroid/app/PendingIntent;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalType"    # I
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "status"    # Z

    .line 105
    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 106
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 107
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 108
    return-void

    .line 118
    :cond_e
    invoke-static {v0, p2, p3}, Lcom/miui/whetstone/WhetstoneManager;->recordRTCWakeupInfo(ILandroid/app/PendingIntent;Z)V

    .line 120
    .end local v0    # "uid":I
    :cond_11
    return-void
.end method

.method public static removeAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 3
    .param p0, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 346
    sget-object v0, Lcom/android/server/AlarmManagerServiceInjector;->mAlignedAlarmArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 347
    return-void
.end method
