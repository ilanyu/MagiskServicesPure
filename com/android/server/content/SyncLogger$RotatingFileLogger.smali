.class Lcom/android/server/content/SyncLogger$RotatingFileLogger;
.super Lcom/android/server/content/SyncLogger;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotatingFileLogger"
.end annotation


# static fields
.field private static final DO_LOGCAT:Z

.field private static final sFilenameDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sTimestampFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mCachedDate:Ljava/util/Date;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentLogFileDayTimestamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mErrorShown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mKeepAgeMs:J

.field private final mLock:Ljava/lang/Object;

.field private final mLogPath:Ljava/io/File;

.field private mLogWriter:Ljava/io/Writer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStringBuilder:Ljava/lang/StringBuilder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    .line 143
    const-string v0, "SyncLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 145
    invoke-direct {p0}, Lcom/android/server/content/SyncLogger;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    .line 118
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    .line 126
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 146
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "syncmanager-log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    .line 147
    return-void
.end method

.method private closeCurrentLogLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    .line 232
    return-void
.end method

.method private dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "file"    # Ljava/io/File;

    .line 262
    const-string v0, "SyncLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const v0, 0x8000

    new-array v0, v0, [C

    .line 265
    .local v0, "buffer":[C
    :try_start_1b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_4b

    .local v1, "in":Ljava/io/Reader;
    const/4 v2, 0x0

    .line 267
    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {v1, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    if-ltz v3, :cond_34

    .line 268
    if-lez v4, :cond_26

    .line 269
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_33} :catch_3a
    .catchall {:try_start_26 .. :try_end_33} :catchall_38

    goto :goto_26

    .line 272
    .end local v4    # "read":I
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_4b

    .line 273
    .end local v1    # "in":Ljava/io/Reader;
    goto :goto_4c

    .line 272
    .restart local v1    # "in":Ljava/io/Reader;
    :catchall_38
    move-exception v3

    goto :goto_3c

    .line 265
    :catch_3a
    move-exception v2

    :try_start_3b
    throw v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 272
    :goto_3c
    if-eqz v2, :cond_47

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4b

    goto :goto_4a

    :catch_42
    move-exception v4

    :try_start_43
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4a

    :cond_47
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    :goto_4a
    throw v3
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4b} :catch_4b

    .end local v1    # "in":Ljava/io/Reader;
    :catch_4b
    move-exception v1

    .line 274
    :goto_4c
    return-void
.end method

.method private handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    if-nez v0, :cond_c

    .line 156
    const-string v0, "SyncLogger"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mErrorShown:Z

    .line 159
    :cond_c
    return-void
.end method

.method private openLogLocked(J)V
    .registers 10
    .param p1, "now"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 205
    const-wide/32 v0, 0x5265c00

    rem-long v0, p1, v0

    .line 206
    .local v0, "day":J
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    if-eqz v2, :cond_10

    iget-wide v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 207
    return-void

    .line 211
    :cond_10
    invoke-direct {p0}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->closeCurrentLogLocked()V

    .line 213
    iput-wide v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCurrentLogFileDayTimestamp:J

    .line 215
    iget-object v2, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v2, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "synclog-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sFilenameDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 222
    :try_start_47
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4f} :catch_50

    .line 225
    goto :goto_65

    .line 223
    :catch_50
    move-exception v4

    .line 224
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open log file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 226
    .end local v4    # "e":Ljava/io/IOException;
    :goto_65
    return-void
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 248
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "files":[Ljava/lang/String;
    if-eqz v1, :cond_27

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_27

    .line 253
    :cond_f
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 255
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 256
    .local v4, "file":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->dumpFile(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 255
    .end local v4    # "file":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 258
    .end local v1    # "files":[Ljava/lang/String;
    :cond_25
    monitor-exit v0

    .line 259
    return-void

    .line 251
    .restart local v1    # "files":[Ljava/lang/String;
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    .line 258
    .end local v1    # "files":[Ljava/lang/String;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public enabled()Z
    .registers 2

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 243
    invoke-static {p1}, Lcom/android/server/content/SyncJobService;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .registers 10
    .param p1, "message"    # [Ljava/lang/Object;

    .line 163
    if-nez p1, :cond_3

    .line 164
    return-void

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 168
    .local v1, "now":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->openLogLocked(J)V

    .line 169
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    if-nez v3, :cond_13

    .line 170
    monitor-exit v0

    return-void

    .line 173
    :cond_13
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 174
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v3, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 175
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->sTimestampFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mCachedDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    iget-object v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 183
    .local v3, "messageStart":I
    array-length v5, p1

    :goto_47
    if-ge v4, v5, :cond_53

    aget-object v6, p1, v4

    .line 184
    .local v6, "o":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .end local v6    # "o":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 186
    :cond_53
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5a
    .catchall {:try_start_6 .. :try_end_5a} :catchall_7e

    .line 189
    :try_start_5a
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    iget-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 190
    iget-object v4, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogWriter:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->flush()V

    .line 193
    sget-boolean v4, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->DO_LOGCAT:Z

    if-eqz v4, :cond_75

    .line 194
    const-string v4, "SyncLogger"

    iget-object v5, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_75} :catch_76
    .catchall {:try_start_5a .. :try_end_75} :catchall_7e

    .line 198
    :cond_75
    goto :goto_7c

    .line 196
    :catch_76
    move-exception v4

    .line 197
    .local v4, "e":Ljava/io/IOException;
    :try_start_77
    const-string v5, "Failed to write log"

    invoke-direct {p0, v5, v4}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 199
    .end local v1    # "now":J
    .end local v3    # "messageStart":I
    .end local v4    # "e":Ljava/io/IOException;
    :goto_7c
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_7e

    throw v1
.end method

.method public purgeOldLogs()V
    .registers 6

    .line 236
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mLogPath:Ljava/io/File;

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->mKeepAgeMs:J

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->deleteOlderFiles(Ljava/io/File;IJ)Z

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
