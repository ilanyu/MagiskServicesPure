.class public Lcom/android/server/am/MiuiUsageStats;
.super Ljava/lang/Object;
.source "MiuiUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    }
.end annotation


# static fields
.field public static final ACTION_CHARGING:Ljava/lang/String; = "charging"

.field public static final ACTION_FG_APP:Ljava/lang/String; = "fg_app"

.field public static final ACTION_LOCK_SCREEN:Ljava/lang/String; = "lock_screen"

.field private static final BATTERY_PLUGGED_AC:Ljava/lang/String; = "AC"

.field private static final BATTERY_PLUGGED_USB:Ljava/lang/String; = "USB"

.field private static final BATTERY_PLUGGED_WIRELESS:Ljava/lang/String; = "WIRELESS"

.field private static final DAY_TO_MILL:J = 0x5265c00L

.field private static final FILE_LIMIT_NUM:I = 0x4

.field private static final FILE_PREFIX:Ljava/lang/String; = "miuiusage-"

.field private static final FILE_WRITE_INTERVAL:I = 0x36ee80

.field private static final SAVE_PATH:Ljava/lang/String; = "/data/system/usagestats"

.field private static final TAG:Ljava/lang/String; = "MiuiUsageStats"

.field private static final mFileLock:Ljava/lang/Object;

.field private static mFormat:Ljava/text/SimpleDateFormat;

.field private static mHistory:Ljava/io/File;

.field private static mLastPlugType:Ljava/lang/String;

.field private static mLastWriteDay:Ljava/lang/String;

.field private static final mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private static mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mUsageStatsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mWriteThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mFileLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mFormat:Ljava/text/SimpleDateFormat;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Lcom/android/server/am/MiuiUsageStats$1;

    const-string/jumbo v1, "miui-usage"

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiUsageStats$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mWriteThread:Ljava/lang/Thread;

    .line 55
    sget-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usagestats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "miuiusage-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mHistory:Ljava/io/File;

    .line 58
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->deleteOldFiles()V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 18
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->writeStatsToFile()V

    return-void
.end method

.method private static addAllStatsToUsageMapLocked()V
    .registers 5

    .line 190
    sget-object v0, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    .line 192
    .local v2, "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    if-eqz v2, :cond_3e

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->endTime:J

    .line 194
    sget-object v3, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 195
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    if-nez v3, :cond_36

    .line 196
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 198
    :cond_36
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    :cond_3e
    sget-object v3, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    goto :goto_a

    .line 203
    :cond_44
    return-void
.end method

.method private static addStatsToUsageMapLocked(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 176
    sget-object v0, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    .line 177
    .local v0, "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    if-eqz v0, :cond_28

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->endTime:J

    .line 179
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 180
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    if-nez v1, :cond_20

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 183
    :cond_20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    :cond_28
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method private static deleteOldFile()V
    .registers 5

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x14997000

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "oldDay":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/usagestats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "miuiusage-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 211
    :cond_2e
    return-void
.end method

.method private static deleteOldFiles()V
    .registers 8

    .line 214
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->getRecentFileNames()Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "recentFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/usagestats"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 217
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3d

    .line 218
    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_3d

    aget-object v5, v2, v4

    .line 219
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "fileName":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 222
    goto :goto_3a

    .line 224
    :cond_22
    const-string/jumbo v7, "miuiusage-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3a

    .line 225
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 226
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 218
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 231
    :cond_3d
    return-void
.end method

.method private static getFormatDate(J)Ljava/lang/String;
    .registers 4
    .param p0, "currentTime"    # J

    .line 242
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p0, p1}, Ljava/sql/Date;-><init>(J)V

    .line 243
    .local v0, "date":Ljava/sql/Date;
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getRecentFileNames()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "recentFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 235
    .local v1, "i":I
    :goto_6
    const/4 v2, 0x4

    if-gt v1, v2, :cond_2f

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "miuiusage-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v1

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 238
    .end local v1    # "i":I
    :cond_2f
    return-object v0
.end method

.method public static startUsageStats(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 63
    if-nez p1, :cond_9

    .line 64
    :try_start_5
    monitor-exit v0

    return-void

    .line 73
    :catchall_7
    move-exception v1

    goto :goto_27

    .line 66
    :cond_9
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 67
    new-instance v1, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    invoke-direct {v1}, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;-><init>()V

    .line 68
    .local v1, "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    iput-object p0, v1, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->action:Ljava/lang/String;

    .line 69
    iput-object p1, v1, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->name:Ljava/lang/String;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->startTime:J

    .line 71
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v1    # "usage":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    :cond_25
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_7

    throw v1
.end method

.method public static startWriteThreadIfNeed(Z)V
    .registers 7
    .param p0, "force"    # Z

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 109
    .local v0, "elapsedTime":J
    if-eqz p0, :cond_11

    .line 110
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 111
    :try_start_9
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->addAllStatsToUsageMapLocked()V

    .line 112
    monitor-exit v2

    goto :goto_11

    :catchall_e
    move-exception v3

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw v3

    .line 114
    :cond_11
    :goto_11
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_22

    if-eqz p0, :cond_2c

    .line 115
    :cond_22
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 116
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    .line 118
    :cond_2c
    return-void
.end method

.method public static stopUsageStats(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 78
    if-nez p0, :cond_9

    .line 79
    :try_start_5
    monitor-exit v0

    return-void

    .line 83
    :catchall_7
    move-exception v1

    goto :goto_12

    .line 81
    :cond_9
    invoke-static {p0}, Lcom/android/server/am/MiuiUsageStats;->addStatsToUsageMapLocked(Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/am/MiuiUsageStats;->startWriteThreadIfNeed(Z)V

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_7

    throw v1
.end method

.method public static updateChargingStats(Landroid/os/BatteryProperties;)V
    .registers 3
    .param p0, "batteryProperties"    # Landroid/os/BatteryProperties;

    .line 88
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_7

    .line 89
    const-string v0, "AC"

    .local v0, "plugType":Ljava/lang/String;
    :goto_6
    goto :goto_16

    .line 90
    .end local v0    # "plugType":Ljava/lang/String;
    :cond_7
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_e

    .line 91
    const-string v0, "USB"

    goto :goto_6

    .line 92
    :cond_e
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_15

    .line 93
    const-string v0, "WIRELESS"

    goto :goto_6

    .line 95
    :cond_15
    const/4 v0, 0x0

    .line 97
    .restart local v0    # "plugType":Ljava/lang/String;
    :goto_16
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mLastPlugType:Ljava/lang/String;

    if-eq v1, v0, :cond_29

    .line 98
    if-eqz v0, :cond_22

    .line 99
    const-string v1, "charging"

    invoke-static {v1, v0}, Lcom/android/server/am/MiuiUsageStats;->startUsageStats(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 101
    :cond_22
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mLastPlugType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/MiuiUsageStats;->stopUsageStats(Ljava/lang/String;)V

    .line 103
    :goto_27
    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastPlugType:Ljava/lang/String;

    .line 105
    :cond_29
    return-void
.end method

.method private static writeFile(Ljava/io/File;)V
    .registers 15
    .param p0, "file"    # Ljava/io/File;

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v0, v1

    .line 134
    new-instance v1, Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 135
    .local v1, "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_e5
    .catchall {:try_start_1 .. :try_end_12} :catchall_e3

    .line 136
    :try_start_12
    sget-object v3, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 137
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_e0

    .line 138
    :try_start_18
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mFileLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_e5
    .catchall {:try_start_18 .. :try_end_1b} :catchall_e3

    .line 139
    :try_start_1b
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 140
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 142
    .local v6, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    if-nez v6, :cond_54

    .line 143
    const-string v7, "MiuiUsageStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "writeFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is empty!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_23

    .line 146
    :cond_54
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 147
    .local v7, "size":I
    const/4 v8, 0x0

    .line 147
    .local v8, "j":I
    :goto_59
    if-ge v8, v7, :cond_cd

    .line 148
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    .line 149
    .local v9, "item":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v10, "sb":Ljava/lang/StringBuffer;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->action:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 151
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " startTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->startTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " endTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->endTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 153
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 155
    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Ljava/io/FileWriter;->write(I)V

    .line 147
    .end local v9    # "item":Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 157
    .end local v8    # "j":I
    :cond_cd
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;"
    .end local v7    # "size":I
    goto/16 :goto_23

    .line 159
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_1b .. :try_end_d3} :catchall_dd

    .line 164
    .end local v1    # "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    nop

    .line 166
    :try_start_d4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    .line 170
    :goto_d7
    goto :goto_ef

    .line 167
    :catch_d8
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_d7

    .line 159
    .local v1, "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    :catchall_dd
    move-exception v3

    :try_start_de
    monitor-exit v2
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    :try_start_df
    throw v3
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e0} :catch_e5
    .catchall {:try_start_df .. :try_end_e0} :catchall_e3

    .line 137
    :catchall_e0
    move-exception v3

    :try_start_e1
    monitor-exit v2
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    :try_start_e2
    throw v3
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e3} :catch_e5
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e3

    .line 164
    .end local v1    # "usageStatsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;>;>;"
    :catchall_e3
    move-exception v1

    goto :goto_f0

    .line 160
    :catch_e5
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    :try_start_e6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_e3

    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_ef

    .line 166
    :try_start_eb
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_d8

    goto :goto_d7

    .line 173
    :cond_ef
    :goto_ef
    return-void

    .line 164
    :goto_f0
    if-eqz v0, :cond_fa

    .line 166
    :try_start_f2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    .line 170
    goto :goto_fa

    .line 167
    :catch_f6
    move-exception v2

    .line 169
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    .end local v2    # "e":Ljava/io/IOException;
    :cond_fa
    :goto_fa
    throw v1
.end method

.method private static writeStatsToFile()V
    .registers 6

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "curDay":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 123
    .local v1, "dayChanged":Z
    if-eqz v1, :cond_30

    .line 124
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/usagestats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "miuiusage-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/MiuiUsageStats;->mHistory:Ljava/io/File;

    .line 125
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->deleteOldFile()V

    .line 127
    :cond_30
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mHistory:Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/am/MiuiUsageStats;->writeFile(Ljava/io/File;)V

    .line 128
    return-void
.end method
