.class public Lcom/android/server/notification/NotificationUsageStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;,
        Lcom/android/server/notification/NotificationUsageStats$Aggregate;,
        Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;,
        Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;,
        Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE_GLOBAL_STATS:Ljava/lang/String; = "__global"

.field private static final EMIT_PERIOD:J = 0xdbba00L

.field private static final EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field private static final ENABLE_AGGREGATED_IN_MEMORY_STATS:Z = true

.field private static final ENABLE_SQLITE_LOG:Z = true

.field public static final FOUR_HOURS:I = 0xdbba00

.field private static final MSG_EMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationUsageStats"

.field public static final TEN_SECONDS:I = 0x2710


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEmitTime:J

.field private final mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

.field private mStatExpiredkeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    sput-object v0, Lcom/android/server/notification/NotificationUsageStats;->EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    .line 86
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    .line 88
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-direct {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    .line 89
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$1;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationUsageStats$1;-><init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    .line 102
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xdbba00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    return-void
.end method

.method private getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 267
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    return-object v0
.end method

.method private getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 277
    .local v0, "array":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_d

    .line 278
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 280
    :cond_d
    const/4 v1, 0x0

    const-string v2, "__global"

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    aput-object v2, v0, v1

    .line 281
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    aput-object v2, v0, v1

    .line 282
    return-object v0
.end method

.method private getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 296
    .local v0, "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_17

    .line 297
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    .line 298
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    .line 301
    return-object v0
.end method

.method private releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    .registers 4
    .param p1, "array"    # [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_a

    .line 288
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "i":I
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    monitor-enter p0

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 332
    .local v1, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p3, :cond_22

    iget-object v2, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 333
    goto :goto_b

    .line 334
    :cond_22
    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 335
    .end local v1    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    goto :goto_b

    .line 336
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mStatsArrays.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mStats.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    .line 342
    monitor-exit p0

    return-void

    .line 330
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "indent":Ljava/lang/String;
    .end local p3    # "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    :catchall_69
    move-exception p1

    monitor-exit p0

    .line 330
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 7
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    monitor-enter p0

    .line 305
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4a

    .line 308
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 309
    .local v1, "aggregatedStats":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 310
    .local v3, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p1, :cond_2c

    iget-object v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 311
    goto :goto_15

    .line 312
    :cond_2c
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dumpJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 313
    .end local v3    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    goto :goto_15

    .line 314
    :cond_34
    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_39} :catch_3a
    .catchall {:try_start_6 .. :try_end_39} :catchall_4a

    .line 317
    .end local v1    # "aggregatedStats":Lorg/json/JSONArray;
    goto :goto_3b

    .line 315
    :catch_3a
    move-exception v1

    .line 321
    :goto_3b
    :try_start_3b
    const-string v1, "historical"

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_46} :catch_47
    .catchall {:try_start_3b .. :try_end_46} :catchall_4a

    .line 324
    goto :goto_48

    .line 322
    :catch_47
    move-exception v1

    .line 326
    :goto_48
    monitor-exit p0

    return-object v0

    .line 304
    .end local v0    # "dump":Lorg/json/JSONObject;
    .end local p1    # "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    :catchall_4a
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized emit()V
    .registers 8

    monitor-enter p0

    .line 345
    :try_start_1
    const-string v0, "__global"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 346
    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->emit()V

    .line 347
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xdbba00

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 350
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-wide v3, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_43

    .line 351
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v2    # "key":Ljava/lang/String;
    :cond_43
    goto :goto_22

    .line 354
    :cond_44
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 355
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_4a

    .line 357
    :cond_5c
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    .line 359
    monitor-exit p0

    return-void

    .line 344
    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_69
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw v0
.end method

.method public declared-synchronized getAppEnqueueRate(Ljava/lang/String;)F
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 109
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 110
    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz v0, :cond_11

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate(J)F

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    monitor-exit p0

    return v1

    .line 113
    :cond_11
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 108
    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_14
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized isAlertRateLimited(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 121
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 122
    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz v0, :cond_d

    .line 123
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->isAlertRateLimited()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return v1

    .line 125
    :cond_d
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 120
    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_10
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 236
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 237
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 238
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 237
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 240
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 241
    monitor-exit p0

    return-void

    .line 235
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_19
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_click_longevity"

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    .line 208
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 210
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onClick()V

    .line 212
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logClicked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 214
    monitor-exit p0

    return-void

    .line 207
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_23
    move-exception p1

    monitor-exit p0

    .line 207
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "note_dismiss_longevity"

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    .line 196
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 198
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onDismiss()V

    .line 200
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 202
    monitor-exit p0

    return-void

    .line 195
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_23
    move-exception p1

    monitor-exit p0

    .line 195
    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerEnqueuedByApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 133
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 134
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 135
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 134
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 137
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 138
    monitor-exit p0

    return-void

    .line 132
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_19
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerOverCountQuota(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 259
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 260
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 261
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 260
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 263
    :cond_14
    monitor-exit p0

    return-void

    .line 258
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_16
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerOverRateQuota(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 252
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 253
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 254
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 253
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 256
    :cond_14
    monitor-exit p0

    return-void

    .line 251
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_16
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V
    .registers 10
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "valid"    # Z
    .param p3, "starred"    # Z
    .param p4, "cached"    # Z

    monitor-enter p0

    .line 218
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 219
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    .line 220
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p2, :cond_13

    .line 221
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 223
    :cond_13
    if-eqz p3, :cond_1b

    .line 224
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 226
    :cond_1b
    if-eqz p4, :cond_24

    .line 227
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    goto :goto_2a

    .line 229
    :cond_24
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 219
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 232
    :cond_2d
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 233
    monitor-exit p0

    return-void

    .line 217
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    .end local p2    # "valid":Z
    .end local p3    # "starred":Z
    .end local p4    # "cached":Z
    :catchall_32
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .registers 9
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 144
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 145
    .local v0, "now":J
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput-wide v0, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v2

    .line 148
    .local v2, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 149
    .local v5, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v6, v5, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 150
    invoke-virtual {v5, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    .line 151
    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    .line 148
    .end local v5    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 153
    :cond_22
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 155
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 157
    monitor-exit p0

    return-void

    .line 143
    .end local v0    # "now":J
    .end local v2    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_2c
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onRemoved()V

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 183
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 184
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 183
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 186
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 188
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 190
    monitor-exit p0

    return-void

    .line 180
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_23
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 244
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 245
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 246
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 245
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 248
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 249
    monitor-exit p0

    return-void

    .line 243
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    :catchall_19
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method

.method public declared-synchronized registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 9
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;

    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateFrom(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 166
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 167
    .local v3, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    .line 169
    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    .line 166
    .end local v3    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 171
    :cond_25
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 175
    monitor-exit p0

    return-void

    .line 163
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local p1    # "notification":Lcom/android/server/notification/NotificationRecord;
    .end local p2    # "old":Lcom/android/server/notification/NotificationRecord;
    :catchall_2f
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/notification/NotificationUsageStats;
    throw p1
.end method
