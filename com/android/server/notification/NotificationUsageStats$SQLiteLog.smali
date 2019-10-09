.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SQLiteLog"
.end annotation


# static fields
.field private static final COL_ACTION_COUNT:Ljava/lang/String; = "action_count"

.field private static final COL_AIRTIME_EXPANDED_MS:Ljava/lang/String; = "expansion_airtime_ms"

.field private static final COL_AIRTIME_MS:Ljava/lang/String; = "airtime_ms"

.field private static final COL_CATEGORY:Ljava/lang/String; = "category"

.field private static final COL_DEFAULTS:Ljava/lang/String; = "defaults"

.field private static final COL_DEMOTED:Ljava/lang/String; = "demoted"

.field private static final COL_EVENT_TIME:Ljava/lang/String; = "event_time_ms"

.field private static final COL_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field private static final COL_EVENT_USER_ID:Ljava/lang/String; = "event_user_id"

.field private static final COL_EXPAND_COUNT:Ljava/lang/String; = "expansion_count"

.field private static final COL_FIRST_EXPANSIONTIME_MS:Ljava/lang/String; = "first_expansion_time_ms"

.field private static final COL_FLAGS:Ljava/lang/String; = "flags"

.field private static final COL_IMPORTANCE_FINAL:Ljava/lang/String; = "importance_final"

.field private static final COL_IMPORTANCE_REQ:Ljava/lang/String; = "importance_request"

.field private static final COL_KEY:Ljava/lang/String; = "key"

.field private static final COL_MUTED:Ljava/lang/String; = "muted"

.field private static final COL_NOISY:Ljava/lang/String; = "noisy"

.field private static final COL_NOTIFICATION_ID:Ljava/lang/String; = "nid"

.field private static final COL_PKG:Ljava/lang/String; = "pkg"

.field private static final COL_POSTTIME_MS:Ljava/lang/String; = "posttime_ms"

.field private static final COL_TAG:Ljava/lang/String; = "tag"

.field private static final COL_WHEN_MS:Ljava/lang/String; = "when_ms"

.field private static final DAY_MS:J = 0x5265c00L

.field private static final DB_NAME:Ljava/lang/String; = "notification_log.db"

.field private static final DB_VERSION:I = 0x5

.field private static final EVENT_TYPE_CLICK:I = 0x2

.field private static final EVENT_TYPE_DISMISS:I = 0x4

.field private static final EVENT_TYPE_POST:I = 0x1

.field private static final EVENT_TYPE_REMOVE:I = 0x3

.field private static final HORIZON_MS:J = 0x240c8400L

.field private static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final MSG_CLICK:I = 0x2

.field private static final MSG_DISMISS:I = 0x4

.field private static final MSG_POST:I = 0x1

.field private static final MSG_REMOVE:I = 0x3

.field private static final PRUNE_MIN_DELAY_MS:J = 0x1499700L

.field private static final PRUNE_MIN_WRITES:J = 0x400L

.field private static final STATS_QUERY:Ljava/lang/String; = "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

.field private static final TAB_LOG:Ljava/lang/String; = "log"

.field private static final TAG:Ljava/lang/String; = "NotificationSQLiteLog"

.field private static sLastPruneMs:J

.field private static sNumWrites:J


# instance fields
.field private final mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mWriteHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "notification-sqlite-log"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1091
    .local v0, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1092
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    .line 1116
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;

    const-string/jumbo v6, "notification_log.db"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 1160
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/notification/NotificationRecord;

    .line 1013
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->writeEvent(JILcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method private getMidnightMs()J
    .registers 9

    .line 1235
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1236
    .local v0, "midnight":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1237
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 1236
    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1238
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 19
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1179
    move-object/from16 v1, p1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v0

    .line 1180
    .local v2, "frequencies":Lorg/json/JSONArray;
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1181
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    move-result-wide v5

    .line 1182
    .local v5, "midnight":J
    const-string v0, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-wide v11, v1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1183
    .local v8, "q":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v4, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 1185
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_33
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_36
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 1186
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1187
    .local v0, "userId":I
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1188
    .local v12, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_4d

    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4d

    .line 1188
    .end local v0    # "userId":I
    .end local v12    # "pkg":Ljava/lang/String;
    goto :goto_94

    .line 1189
    .restart local v0    # "userId":I
    .restart local v12    # "pkg":Ljava/lang/String;
    :cond_4d
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1190
    .local v13, "day":I
    const/4 v14, 0x3

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1191
    .local v14, "count":I
    const/4 v15, 0x4

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1192
    .local v15, "muted":I
    const/4 v7, 0x5

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1193
    .local v7, "noisy":I
    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1194
    .local v10, "demoted":I
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1195
    .local v11, "row":Lorg/json/JSONObject;
    const-string/jumbo v1, "user_id"

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1196
    const-string/jumbo v1, "package"

    invoke-virtual {v11, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1197
    const-string v1, "day"

    invoke-virtual {v11, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1198
    const-string v1, "count"

    invoke-virtual {v11, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1199
    const-string/jumbo v1, "noisy"

    invoke-virtual {v11, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1200
    const-string/jumbo v1, "muted"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1201
    const-string v1, "demoted"

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1202
    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1185
    .end local v0    # "userId":I
    .end local v7    # "noisy":I
    .end local v10    # "demoted":I
    .end local v11    # "row":Lorg/json/JSONObject;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "day":I
    .end local v14    # "count":I
    .end local v15    # "muted":I
    :goto_94
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_97
    .catchall {:try_start_33 .. :try_end_97} :catchall_a2

    move-object/from16 v1, p1

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_36

    .line 1205
    :cond_9d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1206
    nop

    .line 1207
    return-object v2

    .line 1205
    :catchall_a2
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1263
    .local v0, "nowMs":J
    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-gtz v2, :cond_17

    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1499700

    cmp-long v2, v2, v4

    if-lez v2, :cond_4b

    .line 1265
    :cond_17
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    .line 1266
    sput-wide v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    .line 1267
    const-wide/32 v2, 0x240c8400

    sub-long v2, v0, v2

    .line 1268
    .local v2, "horizonStartMs":J
    const-string/jumbo v4, "log"

    const-string v5, "event_time_ms < ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1269
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1268
    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1270
    .local v4, "deletedRows":I
    const-string v5, "NotificationSQLiteLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pruned event entries: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v2    # "horizonStartMs":J
    .end local v4    # "deletedRows":I
    :cond_4b
    return-void
.end method

.method private static putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 9
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    .line 1280
    const-string/jumbo v0, "nid"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1282
    const-string/jumbo v0, "tag"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    :cond_24
    const-string/jumbo v0, "when_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1285
    const-string v0, "flags"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1286
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v0, v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 1287
    .local v0, "before":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    .line 1288
    .local v1, "after":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 1289
    .local v2, "noisy":Z
    const-string v3, "importance_request"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1290
    const-string v3, "importance_final"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1291
    const-string v3, "demoted"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v1, v0, :cond_69

    move v6, v4

    goto :goto_6a

    :cond_69
    move v6, v5

    :goto_6a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1292
    const-string/jumbo v3, "noisy"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1293
    if-eqz v2, :cond_8b

    const/4 v3, 0x4

    if-ge v1, v3, :cond_8b

    .line 1294
    const-string/jumbo v3, "muted"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_95

    .line 1296
    :cond_8b
    const-string/jumbo v3, "muted"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    :goto_95
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v3, :cond_a8

    .line 1299
    const-string v3, "category"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :cond_a8
    const-string v3, "action_count"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_ba

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v4

    nop

    .line 1301
    :cond_ba
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1303
    return-void
.end method

.method private static putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 4
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    .line 1275
    const-string/jumbo v0, "key"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const-string/jumbo v0, "pkg"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method private static putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .registers 5
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    .line 1306
    const-string/jumbo v0, "posttime_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentPosttimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1307
    const-string v0, "airtime_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1308
    const-string v0, "expansion_count"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1309
    const-string v0, "expansion_airtime_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeExpandedMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1310
    const-string v0, "first_expansion_time_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1311
    return-void
.end method

.method private writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    .registers 11
    .param p1, "eventTimeMs"    # J
    .param p3, "eventType"    # I
    .param p4, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 1242
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1243
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "event_user_id"

    iget-object v2, p4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1244
    const-string v1, "event_time_ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1245
    const-string v1, "event_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 1247
    const/4 v1, 0x1

    if-ne p3, v1, :cond_34

    .line 1248
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    goto :goto_37

    .line 1250
    :cond_34
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 1252
    :goto_37
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1253
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "log"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_61

    .line 1254
    const-string v2, "NotificationSQLiteLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while trying to insert values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_61
    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    .line 1257
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1258
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1314
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1315
    return-void
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 6
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1318
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1320
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "post_frequency"

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1321
    const-string/jumbo v1, "since"

    iget-wide v2, p1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1322
    const-string/jumbo v1, "now"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    .line 1325
    goto :goto_23

    .line 1323
    :catch_22
    move-exception v1

    .line 1326
    :goto_23
    return-object v0
.end method

.method public logClicked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .line 1167
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1168
    return-void
.end method

.method public logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .line 1175
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1176
    return-void
.end method

.method public logPosted(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .line 1163
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1164
    return-void
.end method

.method public logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .line 1171
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1172
    return-void
.end method

.method public printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1211
    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1212
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    move-result-wide v4

    .line 1213
    .local v4, "midnight":J
    const-string v0, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-wide v10, v1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1214
    .local v7, "q":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 1216
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_2d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_30
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_c5

    .line 1217
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1218
    .local v0, "userId":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1219
    .local v11, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_4b

    invoke-virtual {v1, v11}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4b

    .line 1216
    .end local v0    # "userId":I
    .end local v11    # "pkg":Ljava/lang/String;
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    goto :goto_b5

    .line 1220
    .restart local v0    # "userId":I
    .restart local v11    # "pkg":Ljava/lang/String;
    :cond_4b
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1221
    .local v12, "day":I
    const/4 v13, 0x3

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1222
    .local v13, "count":I
    const/4 v14, 0x4

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1223
    .local v14, "muted":I
    const/4 v15, 0x5

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1224
    .local v15, "noisy":I
    const/4 v6, 0x6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1225
    .local v6, "demoted":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_68
    .catchall {:try_start_2d .. :try_end_68} :catchall_ce

    move-object/from16 v10, p2

    :try_start_6a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "post_frequency{user_id="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pkg="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",day="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",count="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",muted="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",demoted="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_b0
    .catchall {:try_start_6a .. :try_end_b0} :catchall_c1

    move-object/from16 v9, p1

    :try_start_b2
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1216
    .end local v0    # "userId":I
    .end local v6    # "demoted":I
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "day":I
    .end local v13    # "count":I
    .end local v14    # "muted":I
    .end local v15    # "noisy":I
    :goto_b5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_bf

    move-object/from16 v1, p3

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_30

    .line 1230
    :catchall_bf
    move-exception v0

    goto :goto_d3

    :catchall_c1
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_d3

    :cond_c5
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1231
    nop

    .line 1232
    return-void

    .line 1230
    :catchall_ce
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    :goto_d3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method
