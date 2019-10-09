.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERVAL_LENGTH:[J

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015

.field private static final sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private mLastBackgroundedPackage:Ljava/lang/String;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mStatsChanged:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    .line 231
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 248
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 265
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void

    nop

    nop

    :array_2a
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "usageStatsDir"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 84
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 86
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 88
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 90
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 91
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "eventType"    # I

    .line 799
    packed-switch p0, :pswitch_data_3a

    .line 835
    const-string v0, "UNKNOWN"

    return-object v0

    .line 833
    :pswitch_6
    const-string v0, "SCREEN_NON_INTERACTIVE"

    return-object v0

    .line 831
    :pswitch_9
    const-string v0, "SCREEN_INTERACTIVE"

    return-object v0

    .line 827
    :pswitch_c
    const-string v0, "SLICE_PINNED"

    return-object v0

    .line 829
    :pswitch_f
    const-string v0, "SLICE_PINNED_PRIV"

    return-object v0

    .line 825
    :pswitch_12
    const-string v0, "NOTIFICATION_INTERRUPTION"

    return-object v0

    .line 823
    :pswitch_15
    const-string v0, "STANDBY_BUCKET_CHANGED"

    return-object v0

    .line 821
    :pswitch_18
    const-string v0, "NOTIFICATION_SEEN"

    return-object v0

    .line 819
    :pswitch_1b
    const-string v0, "CHOOSER_ACTION"

    return-object v0

    .line 817
    :pswitch_1e
    const-string v0, "SHORTCUT_INVOCATION"

    return-object v0

    .line 815
    :pswitch_21
    const-string v0, "USER_INTERACTION"

    return-object v0

    .line 813
    :pswitch_24
    const-string v0, "SYSTEM_INTERACTION"

    return-object v0

    .line 811
    :pswitch_27
    const-string v0, "CONFIGURATION_CHANGE"

    return-object v0

    .line 809
    :pswitch_2a
    const-string v0, "CONTINUE_PREVIOUS_DAY"

    return-object v0

    .line 807
    :pswitch_2d
    const-string v0, "END_OF_DAY"

    return-object v0

    .line 803
    :pswitch_30
    const-string v0, "MOVE_TO_BACKGROUND"

    return-object v0

    .line 805
    :pswitch_33
    const-string v0, "MOVE_TO_FOREGROUND"

    return-object v0

    .line 801
    :pswitch_36
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
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

.method private formatDateTime(JZ)Ljava/lang/String;
    .registers 7
    .param p1, "dateTime"    # J
    .param p3, "pretty"    # Z

    .line 576
    if-eqz p3, :cond_23

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 579
    :cond_23
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .registers 7
    .param p1, "elapsedTime"    # J
    .param p3, "pretty"    # Z

    .line 583
    if-eqz p3, :cond_21

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 586
    :cond_21
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static intervalToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "interval"    # I

    .line 784
    packed-switch p0, :pswitch_data_16

    .line 794
    const-string v0, "?"

    return-object v0

    .line 792
    :pswitch_6
    const-string/jumbo v0, "yearly"

    return-object v0

    .line 790
    :pswitch_a
    const-string/jumbo v0, "monthly"

    return-object v0

    .line 788
    :pswitch_e
    const-string/jumbo v0, "weekly"

    return-object v0

    .line 786
    :pswitch_12
    const-string v0, "daily"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic lambda$queryEventsForPackage$0(JJLjava/lang/String;Landroid/util/ArraySet;Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .registers 14
    .param p0, "beginTime"    # J
    .param p2, "endTime"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "names"    # Landroid/util/ArraySet;
    .param p6, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p7, "mutable"    # Z
    .param p8, "accumulatedResult"    # Ljava/util/List;

    .line 404
    iget-object v0, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-nez v0, :cond_5

    .line 405
    return-void

    .line 408
    :cond_5
    iget-object v0, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 409
    .local v0, "startIndex":I
    iget-object v1, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 410
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_3f

    .line 411
    iget-object v3, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v3, v3, p2

    if-ltz v3, :cond_21

    .line 412
    return-void

    .line 415
    :cond_21
    iget-object v3, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 416
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 417
    goto :goto_3c

    .line 419
    :cond_30
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 420
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_39
    invoke-interface {p8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 424
    .end local v2    # "i":I
    :cond_3f
    return-void
.end method

.method private loadActiveStats(J)V
    .registers 10
    .param p1, "currentTimeMillis"    # J

    .line 508
    const/4 v0, 0x0

    move v1, v0

    .local v1, "intervalType":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v1, v2, :cond_44

    .line 509
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    .line 510
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    if-eqz v2, :cond_29

    const-wide/16 v3, 0x1f4

    sub-long v3, p1, v3

    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_29

    iget-wide v3, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget-object v5, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    aget-wide v5, v5, v1

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-gez v3, :cond_29

    .line 517
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aput-object v2, v3, v1

    goto :goto_41

    .line 526
    :cond_29
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v4, v3, v1

    .line 527
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v1

    iput-wide p1, v3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 528
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v1

    const-wide/16 v4, 0x1

    add-long/2addr v4, p1

    iput-wide v4, v3, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 508
    .end local v2    # "stats":Lcom/android/server/usage/IntervalStats;
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 532
    .end local v1    # "intervalType":I
    :cond_44
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 533
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 536
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsReloaded()V

    .line 537
    return-void
.end method

.method private notifyNewUpdate()V
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    iget v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onNewUpdate(I)V

    .line 505
    return-void
.end method

.method private notifyStatsChanged()V
    .registers 2

    .line 497
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_c

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 499
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    .line 501
    :cond_c
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 23
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 281
    const/4 v1, 0x4

    move/from16 v2, p1

    if-ne v2, v1, :cond_16

    .line 282
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result v1

    .line 283
    .end local p1    # "intervalType":I
    .local v1, "intervalType":I
    if-gez v1, :cond_14

    .line 286
    const/4 v1, 0x0

    .line 290
    .end local v1    # "intervalType":I
    .local v12, "intervalType":I
    :cond_14
    move v12, v1

    goto :goto_17

    .end local v12    # "intervalType":I
    .restart local p1    # "intervalType":I
    :cond_16
    move v12, v2

    .end local p1    # "intervalType":I
    .restart local v12    # "intervalType":I
    :goto_17
    const/4 v1, 0x0

    if-ltz v12, :cond_5a

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-lt v12, v2, :cond_20

    goto :goto_5a

    .line 297
    :cond_20
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v13, v2, v12

    .line 304
    .local v13, "currentStats":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, v13, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v8, v2

    if-ltz v2, :cond_2b

    .line 310
    return-object v1

    .line 316
    :cond_2b
    iget-wide v1, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 319
    .local v14, "truncatedEndTime":J
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move v2, v12

    move-wide v3, v8

    move-wide v5, v14

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-wide v2, v13, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v8, v2

    if-gez v2, :cond_57

    iget-wide v2, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_57

    .line 333
    if-nez v1, :cond_50

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 336
    :cond_50
    const/4 v2, 0x1

    move-object/from16 v3, p6

    invoke-interface {v3, v13, v2, v1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    goto :goto_59

    .line 342
    :cond_57
    move-object/from16 v3, p6

    :goto_59
    return-object v1

    .line 294
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v13    # "currentStats":Lcom/android/server/usage/IntervalStats;
    .end local v14    # "truncatedEndTime":J
    :cond_5a
    :goto_5a
    move-object/from16 v3, p6

    return-object v1
.end method

.method private rolloverStats(J)V
    .registers 22
    .param p1, "currentTimeMillis"    # J

    move-object/from16 v0, p0

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 451
    .local v1, "startTime":J
    const-string v3, "UsageStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Rolling over usage stats"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 457
    .local v3, "previousConfig":Landroid/content/res/Configuration;
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 458
    .local v5, "continuePreviousDay":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v7, v6

    move v8, v4

    :goto_2e
    const/4 v9, 0x4

    if-ge v8, v7, :cond_85

    aget-object v10, v6, v8

    .line 459
    .local v10, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v11, v10, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 460
    .local v11, "pkgCount":I
    move v12, v4

    .local v12, "i":I
    :goto_3a
    if-ge v12, v11, :cond_6a

    .line 461
    iget-object v15, v10, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStats;

    .line 462
    .local v15, "pkgStats":Landroid/app/usage/UsageStats;
    iget v4, v15, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v13, 0x1

    if-eq v4, v13, :cond_4d

    iget v4, v15, Landroid/app/usage/UsageStats;->mLastEvent:I

    if-ne v4, v9, :cond_65

    .line 464
    :cond_4d
    iget-object v4, v15, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v4, v15, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v13}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v13

    const-wide/16 v16, 0x1

    sub-long v13, v13, v16

    const/4 v9, 0x3

    invoke-virtual {v10, v4, v13, v14, v9}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 460
    .end local v15    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_65
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x4

    goto :goto_3a

    .line 471
    .end local v12    # "i":I
    :cond_6a
    const/4 v4, 0x0

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-virtual {v10, v4, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 472
    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Lcom/android/server/usage/IntervalStats;->commitTime(J)V

    .line 458
    .end local v10    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v11    # "pkgCount":I
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_2e

    .line 475
    :cond_85
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 476
    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v6, p1

    invoke-virtual {v4, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 477
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 479
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 480
    .local v4, "continueCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_97
    if-ge v8, v4, :cond_c8

    .line 481
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 482
    .local v9, "name":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-wide v12, v10, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 483
    .local v12, "beginTime":J
    iget-object v10, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v14, v10

    move v15, v11

    :goto_aa
    if-ge v15, v14, :cond_c0

    aget-object v11, v10, v15

    .line 484
    .local v11, "stat":Lcom/android/server/usage/IntervalStats;
    move/from16 v18, v4

    const/4 v4, 0x4

    invoke-virtual {v11, v9, v12, v13, v4}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 485
    .end local v4    # "continueCount":I
    .local v18, "continueCount":I
    invoke-virtual {v11, v3, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 483
    .end local v11    # "stat":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v18

    const/4 v11, 0x0

    goto :goto_aa

    .line 480
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "beginTime":J
    .end local v18    # "continueCount":I
    .restart local v4    # "continueCount":I
    :cond_c0
    move/from16 v18, v4

    const/4 v4, 0x4

    .end local v4    # "continueCount":I
    .restart local v18    # "continueCount":I
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v18

    goto :goto_97

    .line 489
    .end local v8    # "i":I
    .end local v18    # "continueCount":I
    .restart local v4    # "continueCount":I
    :cond_c8
    move/from16 v18, v4

    .end local v4    # "continueCount":I
    .restart local v18    # "continueCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v1

    .line 492
    .local v8, "totalTime":J
    const-string v4, "UsageStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Rolling over usage stats complete. Took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " milliseconds"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method private updateRolloverDeadline()V
    .registers 6

    .line 540
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 542
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 543
    const-string v0, "UsageStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Rollover scheduled @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 544
    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 545
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 844
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)V

    .line 845
    return-void
.end method

.method checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 553
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$5;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    .line 560
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 563
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V

    .line 564
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "compact"    # Z

    .line 566
    xor-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/lang/String;)V

    .line 567
    const/4 v0, 0x0

    .local v0, "interval":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 568
    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 569
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 570
    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v1, v0

    xor-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/lang/String;)V

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 573
    .end local v0    # "interval":I
    :cond_2c
    return-void
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method init(J)V
    .registers 16
    .param p1, "currentTimeMillis"    # J

    .line 94
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "nullCount":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "nullCount":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v3

    if-ge v0, v3, :cond_23

    .line 98
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v4, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v4

    aput-object v4, v3, v0

    .line 99
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v0

    if-nez v3, :cond_20

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 97
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 106
    .end local v0    # "i":I
    :cond_23
    if-lez v2, :cond_46

    .line 107
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v0, v0

    if-eq v2, v0, :cond_42

    .line 110
    const-string v0, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Some stats have no latest available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_42
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    goto :goto_49

    .line 122
    :cond_46
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 126
    :goto_49
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v0

    move v4, v1

    :goto_4d
    if-ge v4, v3, :cond_83

    aget-object v5, v0, v4

    .line 127
    .local v5, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v6, v5, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 128
    .local v6, "pkgCount":I
    move v7, v1

    .local v7, "i":I
    :goto_58
    if-ge v7, v6, :cond_7a

    .line 129
    iget-object v8, v5, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    .line 130
    .local v8, "pkgStats":Landroid/app/usage/UsageStats;
    iget v9, v8, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6c

    iget v9, v8, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_77

    .line 132
    :cond_6c
    iget-object v9, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-wide v10, v5, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    const/4 v12, 0x3

    invoke-virtual {v5, v9, v10, v11, v12}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 134
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 128
    .end local v8    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 138
    .end local v7    # "i":I
    :cond_7a
    const/4 v7, 0x0

    iget-wide v8, v5, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 126
    .end local v5    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v6    # "pkgCount":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 141
    :cond_83
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 142
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyNewUpdate()V

    .line 144
    :cond_8e
    return-void
.end method

.method onTimeChanged(JJ)V
    .registers 8
    .param p1, "oldTime"    # J
    .param p3, "newTime"    # J

    .line 147
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 148
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 149
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 150
    return-void
.end method

.method persistActiveStats()V
    .registers 5

    .line 436
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v0, :cond_4b

    .line 437
    const-string v0, "UsageStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Flushing usage stats to disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    .line 440
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 442
    .end local v1    # "i":I
    :cond_2f
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_31} :catch_32

    .line 445
    goto :goto_4b

    .line 443
    :catch_32
    move-exception v0

    .line 444
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failed to persist active stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4b
    :goto_4b
    return-void
.end method

.method printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p3, "prettyDates"    # Z

    .line 591
    const-string/jumbo v0, "time"

    iget-wide v1, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {p0, v1, v2, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 592
    const-string/jumbo v0, "type"

    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 593
    const-string/jumbo v0, "package"

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 594
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 595
    const-string v0, "class"

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 597
    :cond_2b
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_3a

    .line 598
    const-string v0, "config"

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 600
    :cond_3a
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 601
    const-string/jumbo v0, "shortcutId"

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 603
    :cond_46
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_68

    .line 604
    const-string/jumbo v0, "standbyBucket"

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyBucket()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 605
    const-string/jumbo v0, "reason"

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    move-result v1

    invoke-static {v1}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 607
    :cond_68
    const-string v0, "flags"

    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 608
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 609
    return-void
.end method

.method printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .registers 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "tracker"    # Lcom/android/server/usage/IntervalStats$EventTracker;
    .param p4, "prettyDates"    # Z

    .line 663
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_40

    .line 664
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 665
    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 666
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 667
    const-string/jumbo v0, "x for "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-direct {p0, v3, v4, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 669
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3d

    .line 670
    const-string v0, " (now running, started at "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 671
    iget-wide v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    invoke-direct {p0, v0, v1, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 672
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 674
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 676
    :cond_40
    return-void
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/lang/String;)V
    .registers 28
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "prettyDates"    # Z
    .param p4, "skipEvents"    # Z
    .param p5, "pkg"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 680
    move-object/from16 v4, p5

    if-eqz v3, :cond_36

    .line 681
    const-string/jumbo v5, "timeRange"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    iget-wide v9, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v11, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v13, 0x20015

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_4c

    .line 684
    :cond_36
    const-string v5, "beginTime"

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 685
    const-string v5, "endTime"

    iget-wide v6, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 687
    :goto_4c
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 689
    const-string/jumbo v5, "packages"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 691
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 692
    .local v5, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 693
    .local v6, "pkgCount":I
    const/4 v8, 0x0

    .line 693
    .local v8, "i":I
    :goto_62
    if-ge v8, v6, :cond_a6

    .line 694
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 695
    .local v9, "usageStats":Landroid/app/usage/UsageStats;
    if-eqz v4, :cond_75

    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_75

    .line 696
    goto :goto_a3

    .line 698
    :cond_75
    const-string/jumbo v10, "package"

    iget-object v11, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 699
    const-string/jumbo v10, "totalTime"

    iget-wide v11, v9, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 700
    invoke-direct {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v11

    .line 699
    invoke-virtual {v1, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 701
    const-string/jumbo v10, "lastTime"

    iget-wide v11, v9, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-direct {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 702
    const-string v10, "appLaunchCount"

    iget v11, v9, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 703
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 693
    .end local v9    # "usageStats":Landroid/app/usage/UsageStats;
    :goto_a3
    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    .line 705
    .end local v8    # "i":I
    :cond_a6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 708
    const-string v8, "ChooserCounts"

    invoke-virtual {v1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 710
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_bc
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_176

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 711
    .restart local v9    # "usageStats":Landroid/app/usage/UsageStats;
    if-eqz v4, :cond_d3

    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d3

    .line 712
    goto :goto_bc

    .line 714
    :cond_d3
    const-string/jumbo v10, "package"

    iget-object v11, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 715
    iget-object v10, v9, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v10, :cond_162

    .line 716
    iget-object v10, v9, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 717
    .local v10, "chooserCountSize":I
    const/4 v11, 0x0

    .line 717
    .local v11, "i":I
    :goto_e6
    if-ge v11, v10, :cond_162

    .line 718
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 719
    .local v12, "action":Ljava/lang/String;
    iget-object v13, v9, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 720
    .local v13, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 721
    .local v14, "annotationSize":I
    const/4 v15, 0x0

    .line 721
    .local v15, "j":I
    :goto_fd
    if-ge v15, v14, :cond_157

    .line 722
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    .line 723
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/Integer;

    .line 723
    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .local v18, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 724
    .local v5, "count":I
    if-eqz v5, :cond_146

    .line 725
    move/from16 v19, v6

    const-string v6, "ChooserCounts"

    .line 725
    .end local v6    # "pkgCount":I
    .local v19, "pkgCount":I
    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v9

    const-string v9, ":"

    .line 725
    .end local v9    # "usageStats":Landroid/app/usage/UsageStats;
    .local v21, "usageStats":Landroid/app/usage/UsageStats;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 725
    invoke-virtual {v1, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 727
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 727
    .end local v5    # "count":I
    .end local v7    # "key":Ljava/lang/String;
    goto :goto_14c

    .line 721
    .end local v19    # "pkgCount":I
    .end local v21    # "usageStats":Landroid/app/usage/UsageStats;
    .restart local v6    # "pkgCount":I
    .restart local v9    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_146
    move/from16 v19, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 721
    .end local v6    # "pkgCount":I
    .end local v9    # "usageStats":Landroid/app/usage/UsageStats;
    .restart local v19    # "pkgCount":I
    .restart local v21    # "usageStats":Landroid/app/usage/UsageStats;
    :goto_14c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_fd

    .line 717
    .end local v12    # "action":Ljava/lang/String;
    .end local v13    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "annotationSize":I
    .end local v15    # "j":I
    .end local v18    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v19    # "pkgCount":I
    .end local v21    # "usageStats":Landroid/app/usage/UsageStats;
    .local v5, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "pkgCount":I
    .restart local v9    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_157
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 717
    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "pkgCount":I
    .end local v9    # "usageStats":Landroid/app/usage/UsageStats;
    .restart local v18    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v19    # "pkgCount":I
    .restart local v21    # "usageStats":Landroid/app/usage/UsageStats;
    add-int/lit8 v11, v11, 0x1

    goto :goto_e6

    .line 732
    .end local v10    # "chooserCountSize":I
    .end local v11    # "i":I
    .end local v18    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v19    # "pkgCount":I
    .end local v21    # "usageStats":Landroid/app/usage/UsageStats;
    .restart local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "pkgCount":I
    .restart local v9    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_162
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 732
    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "pkgCount":I
    .end local v9    # "usageStats":Landroid/app/usage/UsageStats;
    .restart local v18    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v19    # "pkgCount":I
    .restart local v21    # "usageStats":Landroid/app/usage/UsageStats;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 733
    .end local v21    # "usageStats":Landroid/app/usage/UsageStats;
    nop

    .line 710
    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v8, v20

    goto/16 :goto_bc

    .line 734
    .end local v18    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v19    # "pkgCount":I
    .restart local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "pkgCount":I
    :cond_176
    move-object/from16 v18, v5

    move/from16 v19, v6

    .line 734
    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "pkgCount":I
    .restart local v18    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v19    # "pkgCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 736
    if-nez v4, :cond_1f8

    .line 737
    const-string v5, "configurations"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 739
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 740
    .local v5, "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 741
    .local v6, "configCount":I
    const/4 v7, 0x0

    .line 741
    .local v7, "i":I
    :goto_18e
    if-ge v7, v6, :cond_1ca

    .line 742
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/ConfigurationStats;

    .line 743
    .local v8, "config":Landroid/app/usage/ConfigurationStats;
    const-string v9, "config"

    iget-object v10, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v10}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 745
    const-string/jumbo v9, "totalTime"

    iget-wide v10, v8, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 746
    const-string/jumbo v9, "lastTime"

    iget-wide v10, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 747
    const-string v9, "count"

    iget v10, v8, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 748
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 741
    .end local v8    # "config":Landroid/app/usage/ConfigurationStats;
    add-int/lit8 v7, v7, 0x1

    goto :goto_18e

    .line 750
    .end local v7    # "i":I
    :cond_1ca
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 751
    const-string v7, "event aggregations"

    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 753
    const-string/jumbo v7, "screen-interactive"

    iget-object v8, v2, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, v1, v7, v8, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 755
    const-string/jumbo v7, "screen-non-interactive"

    iget-object v8, v2, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, v1, v7, v8, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 757
    const-string/jumbo v7, "keyguard-shown"

    iget-object v8, v2, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, v1, v7, v8, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 759
    const-string/jumbo v7, "keyguard-hidden"

    iget-object v8, v2, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, v1, v7, v8, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 761
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 766
    .end local v5    # "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    .end local v6    # "configCount":I
    :cond_1f8
    if-nez p4, :cond_22a

    .line 767
    const-string v6, "events"

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 769
    iget-object v6, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 770
    .local v6, "events":Landroid/app/usage/EventList;
    if-eqz v6, :cond_20b

    invoke-virtual {v6}, Landroid/app/usage/EventList;->size()I

    move-result v7

    goto :goto_20c

    :cond_20b
    const/4 v7, 0x0

    .line 771
    .local v7, "eventCount":I
    :goto_20c
    const/16 v17, 0x0

    .line 771
    .local v17, "i":I
    :goto_20e
    move/from16 v8, v17

    .line 771
    .end local v17    # "i":I
    .local v8, "i":I
    if-ge v8, v7, :cond_227

    .line 772
    invoke-virtual {v6, v8}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v9

    .line 773
    .local v9, "event":Landroid/app/usage/UsageEvents$Event;
    if-eqz v4, :cond_221

    iget-object v10, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_221

    .line 774
    goto :goto_224

    .line 776
    :cond_221
    invoke-virtual {v0, v1, v9, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 771
    .end local v9    # "event":Landroid/app/usage/UsageEvents$Event;
    :goto_224
    add-int/lit8 v17, v8, 0x1

    .line 771
    .end local v8    # "i":I
    .restart local v17    # "i":I
    goto :goto_20e

    .line 778
    .end local v17    # "i":I
    :cond_227
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 780
    .end local v6    # "events":Landroid/app/usage/EventList;
    .end local v7    # "eventCount":I
    :cond_22a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 781
    return-void
.end method

.method printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/lang/String;)V
    .registers 22
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "prettyDates"    # Z
    .param p3, "pkg"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 613
    .local v10, "endTime":J
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {v0, v10, v11}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    move-object v12, v0

    .line 614
    .local v12, "yesterday":Lcom/android/server/usage/UnixCalendar;
    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 616
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v13

    .line 618
    .local v13, "beginTime":J
    new-instance v15, Lcom/android/server/usage/UserUsageStatsService$6;

    move-object v0, v15

    move-object v1, v7

    move-wide v2, v13

    move-wide v4, v10

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLjava/lang/String;)V

    const/4 v1, 0x0

    move-object v0, v7

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v6

    .line 643
    .local v6, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const-string v0, "Last 24 hour events ("

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 644
    if-eqz v9, :cond_5e

    .line 645
    const-string/jumbo v15, "timeRange"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v16, 0x20015

    move-wide v1, v13

    move-wide v3, v10

    move-object/from16 v17, v12

    move-object v12, v5

    move/from16 v5, v16

    .end local v12    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    .local v17, "yesterday":Lcom/android/server/usage/UnixCalendar;
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_72

    .line 648
    .end local v17    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    .restart local v12    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    :cond_5e
    move-object/from16 v17, v12

    .line 648
    .end local v12    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    .restart local v17    # "yesterday":Lcom/android/server/usage/UnixCalendar;
    const-string v0, "beginTime"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 649
    const-string v0, "endTime"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 651
    :goto_72
    const-string v0, ")"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 652
    if-eqz v6, :cond_93

    .line 653
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 654
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 655
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v7, v8, v1, v9}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 656
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    goto :goto_80

    .line 657
    :cond_90
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 659
    :cond_93
    return-void
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .registers 13
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 350
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEventStats(IJJ)Ljava/util/List;
    .registers 13
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 354
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(JJZ)Landroid/app/usage/UsageEvents;
    .registers 16
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "obfuscateInstantApps"    # Z

    .line 359
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 360
    .local v0, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Lcom/android/server/usage/UserUsageStatsService$4;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJZLandroid/util/ArraySet;)V

    const/4 v2, 0x0

    move-object v1, p0

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v1

    .line 389
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v1, :cond_35

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_35

    .line 393
    :cond_20
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 394
    .local v2, "table":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 395
    new-instance v3, Landroid/app/usage/UsageEvents;

    invoke-direct {v3, v1, v2}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;)V

    return-object v3

    .line 390
    .end local v2    # "table":[Ljava/lang/String;
    :cond_35
    :goto_35
    const/4 v2, 0x0

    return-object v2
.end method

.method queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 15
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "packageName"    # Ljava/lang/String;

    .line 400
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 401
    .local v0, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v8, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;

    move-object v1, v8

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/-$$Lambda$UserUsageStatsService$aWxPyFEggMep-oyju6mPXDEUesw;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;)V

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v1

    .line 426
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v1, :cond_39

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_39

    .line 430
    :cond_24
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 431
    .local v2, "table":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 432
    new-instance v3, Landroid/app/usage/UsageEvents;

    invoke-direct {v3, v1, v2}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;)V

    return-object v3

    .line 427
    .end local v2    # "table":[Ljava/lang/String;
    :cond_39
    :goto_39
    const/4 v2, 0x0

    return-object v2
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .registers 13
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 346
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 19
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    move-object/from16 v0, p0

    .line 159
    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_15

    .line 161
    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    .line 164
    :cond_15
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 166
    .local v2, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 167
    .local v4, "newFullConfig":Landroid/content/res/Configuration;
    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2d

    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_2d

    .line 170
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v5, v4}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v5, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 175
    :cond_2d
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-nez v5, :cond_38

    .line 176
    new-instance v5, Landroid/app/usage/EventList;

    invoke-direct {v5}, Landroid/app/usage/EventList;-><init>()V

    iput-object v5, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 178
    :cond_38
    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x6

    if-eq v5, v7, :cond_42

    .line 179
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v1}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 182
    :cond_42
    const/4 v5, 0x0

    .line 183
    .local v5, "incrementAppLaunch":Z
    iget v7, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_58

    .line 184
    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v7, :cond_65

    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_65

    .line 185
    const/4 v5, 0x1

    goto :goto_65

    .line 187
    :cond_58
    iget v7, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_65

    .line 188
    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v7, :cond_65

    .line 189
    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    .line 193
    :cond_65
    :goto_65
    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v8, v7

    move v9, v3

    :goto_69
    if-ge v9, v8, :cond_ca

    aget-object v10, v7, v9

    .line 194
    .local v10, "stats":Lcom/android/server/usage/IntervalStats;
    iget v11, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v11, v6, :cond_c0

    const/16 v12, 0x9

    if-eq v11, v12, :cond_a1

    packed-switch v11, :pswitch_data_ce

    .line 220
    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v12, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v14, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    .line 221
    if-eqz v5, :cond_c6

    .line 222
    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/usage/IntervalStats;->incrementAppLaunchCount(Ljava/lang/String;)V

    .end local v10    # "stats":Lcom/android/server/usage/IntervalStats;
    goto :goto_c6

    .line 217
    .restart local v10    # "stats":Lcom/android/server/usage/IntervalStats;
    :pswitch_89
    iget-wide v11, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v10, v11, v12}, Lcom/android/server/usage/IntervalStats;->updateKeyguardHidden(J)V

    .line 218
    goto :goto_c6

    .line 214
    :pswitch_8f
    iget-wide v11, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v10, v11, v12}, Lcom/android/server/usage/IntervalStats;->updateKeyguardShown(J)V

    .line 215
    goto :goto_c6

    .line 211
    :pswitch_95
    iget-wide v11, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v10, v11, v12}, Lcom/android/server/usage/IntervalStats;->updateScreenNonInteractive(J)V

    .line 212
    goto :goto_c6

    .line 208
    :pswitch_9b
    iget-wide v11, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v10, v11, v12}, Lcom/android/server/usage/IntervalStats;->updateScreenInteractive(J)V

    .line 209
    goto :goto_c6

    .line 199
    :cond_a1
    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v12, v1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v13, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 201
    .local v11, "annotations":[Ljava/lang/String;
    if-eqz v11, :cond_bf

    .line 202
    array-length v12, v11

    move v13, v3

    :goto_b0
    if-ge v13, v12, :cond_bf

    aget-object v14, v11, v13

    .line 203
    .local v14, "annotation":Ljava/lang/String;
    iget-object v15, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v10, v15, v14, v3}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v14    # "annotation":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_b0

    .line 206
    .end local v11    # "annotations":[Ljava/lang/String;
    :cond_bf
    goto :goto_c6

    .line 196
    :cond_c0
    iget-wide v11, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v10, v4, v11, v12}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 197
    nop

    .line 193
    .end local v10    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_c6
    :goto_c6
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_69

    .line 228
    :cond_ca
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 229
    return-void

    :pswitch_data_ce
    .packed-switch 0xf
        :pswitch_9b
        :pswitch_95
        :pswitch_8f
        :pswitch_89
    .end packed-switch
.end method
