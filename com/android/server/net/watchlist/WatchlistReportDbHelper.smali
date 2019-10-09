.class Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WatchlistReportDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;,
        Lcom/android/server/net/watchlist/WatchlistReportDbHelper$WhiteListReportContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_MODEL:Ljava/lang/String; = "CREATE TABLE records(app_digest BLOB,cnc_domain TEXT,timestamp INTEGER DEFAULT 0 )"

.field private static final DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

.field private static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final INDEX_CNC_DOMAIN:I = 0x1

.field private static final INDEX_DIGEST:I = 0x0

.field private static final INDEX_TIMESTAMP:I = 0x2

.field private static final NAME:Ljava/lang/String; = "watchlist_report.db"

.field private static final TAG:Ljava/lang/String; = "WatchlistReportDbHelper"

.field private static final VERSION:I = 0x2

.field private static sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    const-string v0, "app_digest"

    const-string v1, "cnc_domain"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getSystemWatchlistDbFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 103
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->setIdleConnectionTimeout(J)V

    .line 104
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    monitor-enter v0

    .line 107
    :try_start_3
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    if-eqz v1, :cond_b

    .line 108
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    monitor-exit v0

    return-object v1

    .line 110
    :cond_b
    :try_start_b
    new-instance v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 111
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->sInstance:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 106
    .end local p0    # "context":Landroid/content/Context;
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getSystemWatchlistDbFile()Ljava/io/File;
    .registers 3

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "watchlist_report.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cleanup(J)Z
    .registers 7
    .param p1, "untilTimestamp"    # J

    .line 189
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 190
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "clause":Ljava/lang/String;
    const-string/jumbo v2, "records"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    return v2
.end method

.method public getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .registers 19
    .param p1, "untilTimestamp"    # J

    .line 149
    const-string/jumbo v1, "timestamp < ?"

    .line 151
    .local v1, "selectStatement":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 152
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    move-object v13, v0

    .line 154
    .local v13, "c":Landroid/database/Cursor;
    const/4 v3, 0x1

    :try_start_a
    const-string/jumbo v4, "records"

    sget-object v5, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->DIGEST_DOMAIN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "timestamp < ?"

    const/4 v14, 0x1

    new-array v7, v14, [Ljava/lang/String;

    .line 156
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    aput-object v2, v7, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 154
    move-object v2, v12

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_61

    move-object v13, v2

    .line 158
    if-nez v13, :cond_2f

    .line 159
    nop

    .line 177
    if-eqz v13, :cond_2e

    .line 178
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_2e
    return-object v0

    .line 161
    :cond_2f
    :try_start_2f
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 162
    .local v2, "appDigestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v3, "appDigestCNCList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 164
    .local v0, "cncDomainVisited":Ljava/lang/String;
    :goto_3a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 166
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "digestHexStr":Ljava/lang/String;
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "cncDomain":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    if-eqz v0, :cond_52

    .line 171
    move-object v0, v5

    .line 173
    :cond_52
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v4    # "digestHexStr":Ljava/lang/String;
    .end local v5    # "cncDomain":Ljava/lang/String;
    goto :goto_3a

    .line 175
    :cond_56
    new-instance v4, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    invoke-direct {v4, v2, v0, v3}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_5b
    .catchall {:try_start_2f .. :try_end_5b} :catchall_61

    .line 177
    if-eqz v13, :cond_60

    .line 178
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_60
    return-object v4

    .line 177
    .end local v0    # "cncDomainVisited":Ljava/lang/String;
    .end local v2    # "appDigestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "appDigestCNCList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_61
    move-exception v0

    if-eqz v13, :cond_67

    .line 178
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_67
    throw v0
.end method

.method public insertNewRecord([BLjava/lang/String;J)Z
    .registers 11
    .param p1, "appDigest"    # [B
    .param p2, "cncDomain"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 135
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "app_digest"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 138
    const-string v2, "cnc_domain"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v2, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string/jumbo v2, "records"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    return v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 116
    const-string v0, "CREATE TABLE records(app_digest BLOB,cnc_domain TEXT,timestamp INTEGER DEFAULT 0 )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 122
    const-string v0, "DROP TABLE IF EXISTS records"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 124
    return-void
.end method
