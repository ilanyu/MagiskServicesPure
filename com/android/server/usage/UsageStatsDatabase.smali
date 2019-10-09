.class Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;,
        Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;
    }
.end annotation


# static fields
.field static final BACKUP_VERSION:I = 0x1

.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x3

.field private static final DEBUG:Z = false

.field static final DEFAULT_PARSER_TIMEOUT:J = 0xafc8L

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field private static final RETENTION_LEN_KEY:Ljava/lang/String; = "ro.usagestats.chooser.retention"

.field private static final SELECTION_LOG_RETENTION_LEN:I

.field private static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private mFirstUpdate:Z

.field private final mIntervalDirs:[Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mNewUpdate:Z

.field private final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 253
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 63
    const-string/jumbo v0, "ro.usagestats.chooser.retention"

    .line 64
    const/16 v1, 0xe

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "dir"    # Ljava/io/File;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "daily"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "weekly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "monthly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "yearly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 82
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 83
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 84
    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .registers 9

    .line 241
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "currentFingerprint":Ljava/lang/String;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 244
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_b
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_17} :catch_42
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_42

    .line 245
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 246
    .local v4, "version":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "buildFingerprint":Ljava/lang/String;
    if-eqz v5, :cond_27

    .line 248
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 250
    :cond_27
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 251
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2f} :catch_38
    .catchall {:try_start_17 .. :try_end_2f} :catchall_35

    .line 253
    :cond_2f
    :try_start_2f
    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_32} :catch_42
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_42

    .line 255
    .end local v3    # "reader":Ljava/io/BufferedReader;
    nop

    .line 254
    move v2, v4

    goto :goto_44

    .line 253
    .end local v4    # "version":I
    .end local v5    # "buildFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_35
    move-exception v4

    move-object v5, v1

    goto :goto_3e

    .line 244
    :catch_38
    move-exception v4

    :try_start_39
    throw v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 253
    :catchall_3a
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_3e
    :try_start_3e
    invoke-static {v5, v3}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_42} :catch_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_42

    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_42
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 257
    .end local v3    # "e":Ljava/lang/Exception;
    .local v2, "version":I
    :goto_44
    const/4 v3, 0x3

    if-eq v2, v3, :cond_68

    .line 258
    const-string v4, "UsageStatsDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V

    .line 262
    :cond_68
    if-ne v2, v3, :cond_6e

    iget-boolean v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v4, :cond_95

    .line 263
    :cond_6e
    :try_start_6e
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7a} :catch_9e

    .line 264
    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_7a
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 265
    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 267
    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_91} :catch_98
    .catchall {:try_start_7a .. :try_end_91} :catchall_96

    .line 269
    :try_start_91
    invoke-static {v1, v4}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_9e

    .line 272
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    nop

    .line 274
    :cond_95
    return-void

    .line 269
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_96
    move-exception v3

    goto :goto_9a

    .line 263
    :catch_98
    move-exception v1

    :try_start_99
    throw v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_96

    .line 269
    :goto_9a
    :try_start_9a
    invoke-static {v1, v4}, Lcom/android/server/usage/UsageStatsDatabase;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9e} :catch_9e

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_9e
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Failed to write new version"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static deleteDirectory(Ljava/io/File;)V
    .registers 6
    .param p0, "directory"    # Ljava/io/File;

    .line 809
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 810
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1c

    .line 811
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 812
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_16

    .line 813
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_19

    .line 815
    :cond_16
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 811
    .end local v3    # "file":Ljava/io/File;
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 819
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 820
    return-void
.end method

.method private static deleteDirectoryContents(Ljava/io/File;)V
    .registers 5
    .param p0, "directory"    # Ljava/io/File;

    .line 802
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 803
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 804
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 803
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 806
    :cond_10
    return-void
.end method

.method private static deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;
    .registers 7
    .param p0, "data"    # [B

    .line 788
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 789
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 790
    .local v1, "in":Ljava/io/DataInputStream;
    new-instance v2, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v2}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 792
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 793
    invoke-static {v1, v2}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_19

    .line 797
    goto :goto_22

    .line 794
    :catch_19
    move-exception v3

    .line 795
    .local v3, "ioe":Ljava/io/IOException;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "DeSerializing IntervalStats Failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    const/4 v2, 0x0

    .line 798
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_22
    return-object v2
.end method

.method private doUpgradeLocked(I)V
    .registers 8
    .param p1, "thisVersion"    # I

    .line 283
    const/4 v0, 0x2

    if-ge p1, v0, :cond_2a

    .line 286
    const-string v0, "UsageStatsDatabase"

    const-string v1, "Deleting all usage stats files"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v2

    if-ge v1, v2, :cond_2a

    .line 288
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 289
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_27

    .line 290
    array-length v3, v2

    move v4, v0

    :goto_1d
    if-ge v4, v3, :cond_27

    aget-object v5, v2, v4

    .line 291
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 290
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 287
    .end local v2    # "files":[Ljava/io/File;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 296
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .registers 3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIntervalStatsBytes(Ljava/io/DataInputStream;)[B
    .registers 4
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 762
    .local v0, "length":I
    new-array v1, v0, [B

    .line 763
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    .line 764
    return-object v1
.end method

.method private indexFilesLocked()V
    .registers 13

    .line 192
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .line 200
    .local v0, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v3, v3

    if-ge v2, v3, :cond_61

    .line 201
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, v2

    if-nez v3, :cond_1c

    .line 202
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    new-instance v4, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v4}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v4, v3, v2

    goto :goto_23

    .line 204
    :cond_1c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 206
    :goto_23
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 207
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_5e

    .line 212
    array-length v4, v3

    move v5, v1

    :goto_2f
    if-ge v5, v4, :cond_5e

    aget-object v6, v3, v5

    .line 213
    .local v6, "f":Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    invoke-direct {v7, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 215
    .local v7, "af":Landroid/util/AtomicFile;
    :try_start_38
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v2

    invoke-static {v7}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10, v7}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_44

    .line 218
    goto :goto_5b

    .line 216
    :catch_44
    move-exception v8

    .line 217
    .local v8, "e":Ljava/io/IOException;
    const-string v9, "UsageStatsDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to index file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "af":Landroid/util/AtomicFile;
    .end local v8    # "e":Ljava/io/IOException;
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 200
    .end local v3    # "files":[Ljava/io/File;
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 222
    .end local v2    # "i":I
    :cond_61
    return-void
.end method

.method private mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .registers 5
    .param p1, "beingRestored"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "onDevice"    # Lcom/android/server/usage/IntervalStats;

    .line 736
    if-nez p2, :cond_3

    return-object p1

    .line 737
    :cond_3
    if-nez p1, :cond_7

    const/4 v0, 0x0

    return-object v0

    .line 738
    :cond_7
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 739
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 740
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 741
    return-object p1
.end method

.method private static pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .registers 17
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    .line 561
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 562
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_76

    .line 563
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_76

    aget-object v0, v1, v4

    .line 564
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 565
    .local v5, "path":Ljava/lang/String;
    const-string v6, ".bak"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 566
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, ".bak"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_30

    .line 571
    :cond_2f
    move-object v6, v0

    .end local v0    # "f":Ljava/io/File;
    .local v6, "f":Ljava/io/File;
    :goto_30
    :try_start_30
    invoke-static {v6}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v7
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_35

    .line 574
    .local v7, "beginTime":J
    goto :goto_39

    .line 572
    .end local v7    # "beginTime":J
    :catch_35
    move-exception v0

    move-object v7, v0

    .line 573
    .local v0, "e":Ljava/io/IOException;
    const-wide/16 v7, 0x0

    .line 576
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v7    # "beginTime":J
    :goto_39
    cmp-long v0, v7, p1

    if-gez v0, :cond_73

    .line 578
    :try_start_3d
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 579
    .local v0, "af":Landroid/util/AtomicFile;
    new-instance v9, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v9}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 580
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-static {v0, v9}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 581
    iget-object v10, v9, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 582
    .local v10, "pkgCount":I
    move v11, v3

    .local v11, "i":I
    :goto_51
    if-ge v11, v10, :cond_67

    .line 583
    iget-object v12, v9, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .line 584
    .local v12, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v13, v12, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v13, :cond_64

    .line 585
    iget-object v13, v12, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->clear()V

    .line 582
    .end local v12    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_64
    add-int/lit8 v11, v11, 0x1

    goto :goto_51

    .line 588
    .end local v11    # "i":I
    :cond_67
    invoke-static {v0, v9}, Lcom/android/server/usage/UsageStatsXml;->write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_6a} :catch_6b

    .line 591
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v9    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v10    # "pkgCount":I
    goto :goto_73

    .line 589
    :catch_6b
    move-exception v0

    .line 590
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "UsageStatsDatabase"

    const-string v10, "Failed to delete chooser counts from usage stats file"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "beginTime":J
    :cond_73
    :goto_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 595
    :cond_76
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 12
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    .line 538
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 539
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_45

    .line 540
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_45

    aget-object v4, v0, v3

    .line 541
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 542
    .local v5, "path":Ljava/lang/String;
    const-string v6, ".bak"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 543
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, ".bak"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 548
    :cond_2e
    :try_start_2e
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v6
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_33

    .line 551
    .local v6, "beginTime":J
    goto :goto_36

    .line 549
    .end local v6    # "beginTime":J
    :catch_33
    move-exception v6

    .line 550
    .local v6, "e":Ljava/io/IOException;
    const-wide/16 v6, 0x0

    .line 553
    .local v6, "beginTime":J
    :goto_36
    cmp-long v8, v6, p1

    if-gez v8, :cond_42

    .line 554
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 540
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "beginTime":J
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 558
    :cond_45
    return-void
.end method

.method private static sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V
    .registers 2
    .param p0, "stats"    # Lcom/android/server/usage/IntervalStats;

    .line 768
    if-nez p0, :cond_3

    return-void

    .line 769
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 770
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 771
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 772
    :cond_14
    return-void
.end method

.method private static serializeIntervalStats(Lcom/android/server/usage/IntervalStats;)[B
    .registers 6
    .param p0, "stats"    # Lcom/android/server/usage/IntervalStats;

    .line 775
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 776
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 778
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_a
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 779
    invoke-static {v1, p0}, Lcom/android/server/usage/UsageStatsXml;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_13

    .line 783
    goto :goto_1e

    .line 780
    :catch_13
    move-exception v2

    .line 781
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "UsageStatsDatabase"

    const-string v4, "Serializing IntervalStats Failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 784
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V
    .registers 7
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "statsFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 748
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_5
    invoke-static {p2, v0}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_18

    .line 753
    nop

    .line 754
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V

    .line 755
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->serializeIntervalStats(Lcom/android/server/usage/IntervalStats;)[B

    move-result-object v1

    .line 756
    .local v1, "data":[B
    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 757
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 758
    return-void

    .line 749
    .end local v1    # "data":[B
    :catch_18
    move-exception v1

    .line 750
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsDatabase"

    const-string v3, "Failed to read usage stats file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 752
    return-void
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    move-object/from16 v1, p0

    .line 669
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 670
    :try_start_5
    const-string/jumbo v0, "usage_stats"
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e3

    move-object/from16 v3, p1

    :try_start_a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 672
    nop

    .line 673
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v4

    .line 674
    .local v4, "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 675
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    .line 676
    .local v6, "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 677
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v8

    .line 678
    .local v8, "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    nop

    .line 679
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v10
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_e1

    .line 682
    .local v10, "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :try_start_28
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_ca
    .catchall {:try_start_28 .. :try_end_2c} :catchall_c6

    move-object/from16 v13, p2

    :try_start_2e
    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 683
    .local v11, "in":Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 686
    .local v12, "backupDataVersion":I
    if-lt v12, v5, :cond_bf

    if-le v12, v5, :cond_3e

    goto/16 :goto_bf

    .line 690
    :cond_3e
    move v14, v0

    .line 690
    .local v14, "i":I
    :goto_3f
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v15, v15

    if-ge v14, v15, :cond_4e

    .line 691
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v15, v15, v14

    invoke-static {v15}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    .line 690
    add-int/lit8 v14, v14, 0x1

    goto :goto_3f

    .line 694
    .end local v14    # "i":I
    :cond_4e
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 695
    .local v14, "fileCount":I
    move v15, v0

    .line 695
    .local v15, "i":I
    :goto_53
    if-ge v15, v14, :cond_6a

    .line 696
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    .line 697
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v9, v4}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v16

    move-object/from16 v9, v16

    .line 698
    invoke-virtual {v1, v0, v9}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 695
    .end local v9    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x3

    goto :goto_53

    .line 701
    .end local v15    # "i":I
    :cond_6a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 702
    .end local v14    # "fileCount":I
    .local v9, "fileCount":I
    move v14, v0

    .line 702
    .local v14, "i":I
    :goto_6f
    if-ge v14, v9, :cond_85

    .line 703
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    move-result-object v15

    .line 704
    .local v15, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v15, v6}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v16

    move-object/from16 v15, v16

    .line 705
    invoke-virtual {v1, v5, v15}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 702
    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v14, v14, 0x1

    goto :goto_6f

    .line 708
    .end local v14    # "i":I
    :cond_85
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 709
    .end local v9    # "fileCount":I
    .local v5, "fileCount":I
    move v9, v0

    .line 709
    .local v9, "i":I
    :goto_8a
    if-ge v9, v5, :cond_9f

    .line 710
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    move-result-object v14

    .line 711
    .local v14, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v14, v8}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v15

    move-object v14, v15

    .line 712
    invoke-virtual {v1, v7, v14}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 709
    .end local v14    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v9, v9, 0x1

    goto :goto_8a

    .line 715
    .end local v9    # "i":I
    :cond_9f
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    move v5, v7

    .line 716
    nop

    .line 716
    .local v0, "i":I
    :goto_a5
    if-ge v0, v5, :cond_bb

    .line 717
    invoke-static {v11}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    .line 718
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {v1, v7, v10}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    move-object v7, v9

    .line 719
    const/4 v9, 0x3

    invoke-virtual {v1, v9, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_b8} :catch_c4
    .catchall {:try_start_2e .. :try_end_b8} :catchall_d8

    .line 716
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 725
    .end local v0    # "i":I
    .end local v5    # "fileCount":I
    .end local v11    # "in":Ljava/io/DataInputStream;
    .end local v12    # "backupDataVersion":I
    :cond_bb
    :try_start_bb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    goto :goto_d7

    .line 725
    .restart local v11    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "backupDataVersion":I
    :cond_bf
    :goto_bf
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v2
    :try_end_c3
    .catchall {:try_start_bb .. :try_end_c3} :catchall_ea

    .line 686
    return-void

    .line 722
    .end local v11    # "in":Ljava/io/DataInputStream;
    .end local v12    # "backupDataVersion":I
    :catch_c4
    move-exception v0

    goto :goto_cd

    .line 725
    :catchall_c6
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_d9

    .line 722
    :catch_ca
    move-exception v0

    move-object/from16 v13, p2

    .line 723
    .local v0, "ioe":Ljava/io/IOException;
    :goto_cd
    :try_start_cd
    const-string v5, "UsageStatsDatabase"

    const-string v7, "Failed to read data from input stream"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_d8

    .line 725
    .end local v0    # "ioe":Ljava/io/IOException;
    :try_start_d4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 726
    :goto_d7
    goto :goto_df

    .line 725
    :catchall_d8
    move-exception v0

    :goto_d9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    throw v0

    .line 728
    .end local v4    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v6    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v10    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :cond_dd
    move-object/from16 v13, p2

    :goto_df
    monitor-exit v2

    .line 729
    return-void

    .line 728
    :catchall_e1
    move-exception v0

    goto :goto_e6

    :catchall_e3
    move-exception v0

    move-object/from16 v3, p1

    :goto_e6
    move-object/from16 v13, p2

    :goto_e8
    monitor-exit v2
    :try_end_e9
    .catchall {:try_start_d4 .. :try_end_e9} :catchall_ea

    throw v0

    :catchall_ea
    move-exception v0

    goto :goto_e8
.end method

.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .registers 14
    .param p1, "checkinAction"    # Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;

    .line 137
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 140
    .local v1, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 144
    .local v3, "fileCount":I
    const/4 v4, -0x1

    .line 145
    .local v4, "lastCheckin":I
    move v5, v4

    move v4, v2

    .local v4, "i":I
    .local v5, "lastCheckin":I
    :goto_f
    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_2d

    .line 146
    invoke-virtual {v1, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 147
    move v5, v4

    .line 145
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 151
    .end local v4    # "i":I
    :cond_2d
    add-int/lit8 v4, v5, 0x1

    .line 152
    .local v4, "start":I
    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x1

    if-ne v4, v6, :cond_36

    .line 153
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_c4

    return v7

    .line 157
    :cond_36
    :try_start_36
    new-instance v6, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v6}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 158
    .local v6, "stats":Lcom/android/server/usage/IntervalStats;
    move v8, v4

    .local v8, "i":I
    :goto_3c
    add-int/lit8 v9, v3, -0x1

    if-ge v8, v9, :cond_54

    .line 159
    invoke-virtual {v1, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-static {v9, v6}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 160
    invoke-interface {p1, v6}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z

    move-result v9
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4d} :catch_ba
    .catchall {:try_start_36 .. :try_end_4d} :catchall_c4

    if-nez v9, :cond_51

    .line 161
    :try_start_4f
    monitor-exit v0

    return v2

    .line 158
    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 167
    .end local v6    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "i":I
    :cond_54
    nop

    .line 171
    move v2, v4

    .local v2, "i":I
    :goto_56
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_b8

    .line 172
    invoke-virtual {v1, v2}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 173
    .local v6, "file":Landroid/util/AtomicFile;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-c"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v8, "checkedInFile":Ljava/io/File;
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_ad

    .line 178
    const-string v9, "UsageStatsDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to mark file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " as checked-in"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit v0

    return v7

    .line 185
    :cond_ad
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2, v9}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 171
    .end local v6    # "file":Landroid/util/AtomicFile;
    .end local v8    # "checkedInFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 187
    .end local v1    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v2    # "i":I
    .end local v3    # "fileCount":I
    .end local v4    # "start":I
    .end local v5    # "lastCheckin":I
    :cond_b8
    monitor-exit v0

    .line 188
    return v7

    .line 164
    .restart local v1    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v3    # "fileCount":I
    .restart local v4    # "start":I
    .restart local v5    # "lastCheckin":I
    :catch_ba
    move-exception v6

    .line 165
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to check-in"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    monitor-exit v0

    return v2

    .line 187
    .end local v1    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v3    # "fileCount":I
    .end local v4    # "start":I
    .end local v5    # "lastCheckin":I
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_c4
    move-exception v1

    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_4f .. :try_end_c6} :catchall_c4

    throw v1
.end method

.method public findBestFitBucket(JJ)I
    .registers 15
    .param p1, "beginTimeStamp"    # J
    .param p3, "endTimeStamp"    # J

    .line 481
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    const/4 v1, -0x1

    .line 483
    .local v1, "bestBucket":I
    const-wide v2, 0x7fffffffffffffffL

    .line 484
    .local v2, "smallestDiff":J
    :try_start_9
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_e
    if-ltz v4, :cond_3a

    .line 485
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v5

    .line 486
    .local v5, "index":I
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 487
    .local v6, "size":I
    if-ltz v5, :cond_37

    if-ge v5, v6, :cond_37

    .line 489
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v7, v7, v4

    invoke-virtual {v7, v5}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v7

    sub-long/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 490
    .local v7, "diff":J
    cmp-long v9, v7, v2

    if-gez v9, :cond_37

    .line 491
    move-wide v2, v7

    .line 492
    move v1, v4

    .line 484
    .end local v5    # "index":I
    .end local v6    # "size":I
    .end local v7    # "diff":J
    :cond_37
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 496
    .end local v4    # "i":I
    :cond_3a
    monitor-exit v0

    return v1

    .line 497
    .end local v1    # "bestBucket":I
    .end local v2    # "smallestDiff":J
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 624
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v2, "usage_stats"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 626
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_cf

    .line 628
    .local v2, "out":Ljava/io/DataOutputStream;
    const/4 v3, 0x1

    :try_start_1e
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 630
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 631
    move v4, v5

    .line 631
    .local v4, "i":I
    :goto_2e
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_48

    .line 633
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    .line 634
    invoke-virtual {v6, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 633
    invoke-direct {p0, v2, v6}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V

    .line 632
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 637
    .end local v4    # "i":I
    :cond_48
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 638
    move v4, v5

    .line 638
    .restart local v4    # "i":I
    :goto_54
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_6e

    .line 640
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v3

    .line 641
    invoke-virtual {v6, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 640
    invoke-direct {p0, v2, v6}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V

    .line 639
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 644
    .end local v4    # "i":I
    :cond_6e
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 645
    move v3, v5

    .line 645
    .local v3, "i":I
    :goto_7b
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_95

    .line 647
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v4

    .line 648
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 647
    invoke-direct {p0, v2, v6}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 651
    .end local v3    # "i":I
    :cond_95
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 652
    nop

    .line 652
    .local v5, "i":I
    :goto_a2
    move v3, v5

    .line 652
    .end local v5    # "i":I
    .restart local v3    # "i":I
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_bd

    .line 654
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v4

    .line 655
    invoke-virtual {v5, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    .line 654
    invoke-direct {p0, v2, v5}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_ba} :catch_be
    .catchall {:try_start_1e .. :try_end_ba} :catchall_cf

    .line 653
    add-int/lit8 v5, v3, 0x1

    .line 653
    .end local v3    # "i":I
    .restart local v5    # "i":I
    goto :goto_a2

    .line 661
    .end local v5    # "i":I
    :cond_bd
    goto :goto_c9

    .line 658
    :catch_be
    move-exception v3

    .line 659
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_bf
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to write data to output stream"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 663
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_c9
    :goto_c9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 664
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_cf
    move-exception v1

    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_bf .. :try_end_d1} :catchall_cf

    throw v1
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .registers 8
    .param p1, "intervalType"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    if-ltz p1, :cond_39

    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_39

    .line 354
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 355
    .local v1, "fileCount":I
    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 356
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_37

    return-object v2

    .line 360
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 361
    .local v3, "f":Landroid/util/AtomicFile;
    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 362
    .local v4, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-static {v3, v4}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_2d
    .catchall {:try_start_17 .. :try_end_2b} :catchall_37

    .line 363
    :try_start_2b
    monitor-exit v0

    return-object v4

    .line 364
    .end local v3    # "f":Landroid/util/AtomicFile;
    .end local v4    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_2d
    move-exception v3

    .line 365
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to read usage stats file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .end local v1    # "fileCount":I
    .end local v3    # "e":Ljava/io/IOException;
    monitor-exit v0

    .line 368
    return-object v2

    .line 367
    :catchall_37
    move-exception v1

    goto :goto_50

    .line 351
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_37

    throw v1
.end method

.method public init(J)V
    .registers 12
    .param p1, "currentTimeMillis"    # J

    .line 90
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_33

    aget-object v5, v1, v4

    .line 92
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 93
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 91
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 94
    .restart local v5    # "f":Ljava/io/File;
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v5    # "f":Ljava/io/File;
    :cond_33
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    .line 100
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 103
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v2, v1

    :goto_3c
    if-ge v3, v2, :cond_66

    aget-object v4, v1, v3

    .line 104
    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v5

    .line 105
    .local v5, "startIndex":I
    if-gez v5, :cond_47

    .line 106
    goto :goto_63

    .line 109
    :cond_47
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    .line 110
    .local v6, "fileCount":I
    move v7, v5

    .local v7, "i":I
    :goto_4c
    if-ge v7, v6, :cond_5a

    .line 111
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 110
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 116
    .end local v7    # "i":I
    :cond_5a
    move v7, v5

    .restart local v7    # "i":I
    :goto_5b
    if-ge v7, v6, :cond_63

    .line 117
    invoke-virtual {v4, v7}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 116
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b

    .line 103
    .end local v4    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v5    # "startIndex":I
    .end local v6    # "fileCount":I
    .end local v7    # "i":I
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 120
    :cond_66
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method isFirstUpdate()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    return v0
.end method

.method isNewUpdate()Z
    .registers 2

    .line 235
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    return v0
.end method

.method public onTimeChanged(J)V
    .registers 23
    .param p1, "timeDiffMillis"    # J

    move-object/from16 v1, p0

    .line 299
    move-wide/from16 v2, p1

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 300
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 301
    .local v5, "logBuilder":Ljava/lang/StringBuilder;
    const-string v0, "Time changed by "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {v2, v3, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 303
    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "filesDeleted":I
    const/4 v6, 0x0

    .line 308
    .local v6, "filesMoved":I
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v7

    move v10, v6

    const/4 v6, 0x0

    .end local v6    # "filesMoved":I
    .local v10, "filesMoved":I
    :goto_21
    if-ge v6, v8, :cond_a5

    aget-object v11, v7, v6

    .line 309
    .local v11, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v11}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v12

    .line 310
    .local v12, "fileCount":I
    move v13, v10

    move v10, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v10, "filesDeleted":I
    .local v13, "filesMoved":I
    :goto_2c
    move v14, v0

    .end local v0    # "i":I
    .local v14, "i":I
    if-ge v14, v12, :cond_97

    .line 311
    invoke-virtual {v11, v14}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    move-object v15, v0

    .line 312
    .local v15, "file":Landroid/util/AtomicFile;
    invoke-virtual {v11, v14}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v16

    move/from16 v18, v10

    add-long v9, v16, v2

    .line 313
    .end local v10    # "filesDeleted":I
    .local v9, "newTime":J
    .local v18, "filesDeleted":I
    const-wide/16 v16, 0x0

    cmp-long v0, v9, v16

    if-gez v0, :cond_4b

    .line 314
    add-int/lit8 v0, v18, 0x1

    .line 315
    .end local v18    # "filesDeleted":I
    .local v0, "filesDeleted":I
    invoke-virtual {v15}, Landroid/util/AtomicFile;->delete()V
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_c3

    .line 310
    move v10, v0

    goto :goto_92

    .line 318
    .end local v0    # "filesDeleted":I
    .restart local v18    # "filesDeleted":I
    :cond_4b
    :try_start_4b
    invoke-virtual {v15}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_52} :catch_53
    .catchall {:try_start_4b .. :try_end_52} :catchall_c3

    .line 321
    goto :goto_54

    .line 319
    :catch_53
    move-exception v0

    .line 323
    :goto_54
    :try_start_54
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "newName":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 328
    :cond_7a
    new-instance v2, Ljava/io/File;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .local v2, "newFile":Ljava/io/File;
    add-int/lit8 v13, v13, 0x1

    .line 330
    invoke-virtual {v15}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 310
    .end local v0    # "newName":Ljava/lang/String;
    .end local v2    # "newFile":Ljava/io/File;
    .end local v9    # "newTime":J
    .end local v15    # "file":Landroid/util/AtomicFile;
    move/from16 v10, v18

    .end local v18    # "filesDeleted":I
    .restart local v10    # "filesDeleted":I
    :goto_92
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "i":I
    .local v0, "i":I
    move-wide/from16 v2, p1

    goto :goto_2c

    .line 333
    .end local v0    # "i":I
    :cond_97
    move/from16 v18, v10

    .end local v10    # "filesDeleted":I
    .restart local v18    # "filesDeleted":I
    invoke-virtual {v11}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 308
    .end local v11    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v12    # "fileCount":I
    add-int/lit8 v6, v6, 0x1

    move v10, v13

    move/from16 v0, v18

    move-wide/from16 v2, p1

    goto/16 :goto_21

    .line 336
    .end local v13    # "filesMoved":I
    .end local v18    # "filesDeleted":I
    .local v0, "filesDeleted":I
    .local v10, "filesMoved":I
    :cond_a5
    const-string v2, " files deleted: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, " files moved: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    const-string v2, "UsageStatsDatabase"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 342
    .end local v0    # "filesDeleted":I
    .end local v5    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "filesMoved":I
    monitor-exit v4

    .line 343
    return-void

    .line 342
    :catchall_c3
    move-exception v0

    monitor-exit v4
    :try_end_c5
    .catchall {:try_start_54 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method public prune(J)V
    .registers 8
    .param p1, "currentTimeMillis"    # J

    .line 504
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 506
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 507
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 508
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 507
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 510
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 511
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 512
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 513
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 512
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 515
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 516
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 517
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 518
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 517
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 520
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 521
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 522
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 523
    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 522
    invoke-static {v1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 525
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 526
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    sget v3, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    neg-int v3, v3

    invoke-virtual {v1, v3}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 527
    nop

    .local v2, "i":I
    :goto_76
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v2

    if-ge v1, v2, :cond_8c

    .line 528
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    .line 527
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_76

    .line 533
    .end local v2    # "i":I
    :cond_8c
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 534
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_91

    throw v1
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .registers 10
    .param p1, "intervalType"    # I
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    if-nez p2, :cond_3

    return-void

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    if-ltz p1, :cond_46

    :try_start_8
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_46

    .line 607
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 608
    .local v1, "f":Landroid/util/AtomicFile;
    if-nez v1, :cond_39

    .line 609
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v4, v4, p1

    iget-wide v5, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 610
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 611
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v2, v2, p1

    iget-wide v3, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 614
    :cond_39
    invoke-static {v1, p2}, Lcom/android/server/usage/UsageStatsXml;->write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 615
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 616
    .end local v1    # "f":Landroid/util/AtomicFile;
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :catchall_44
    move-exception v1

    goto :goto_5d

    .line 604
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 616
    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_8 .. :try_end_5e} :catchall_44

    throw v1
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 30
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

    .line 396
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    .line 396
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 397
    if-ltz v2, :cond_14d

    :try_start_d
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    if-ge v2, v0, :cond_14d

    .line 401
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, v2

    move-object v8, v0

    .line 403
    .local v8, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v0, v5, v3

    const/4 v9, 0x0

    if-gtz v0, :cond_1e

    .line 407
    monitor-exit v7

    return-object v9

    .line 410
    :cond_1e
    invoke-virtual {v8, v3, v4}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 411
    .local v0, "startIndex":I
    if-gez v0, :cond_25

    .line 414
    const/4 v0, 0x0

    .line 417
    .end local v0    # "startIndex":I
    .local v10, "startIndex":I
    :cond_25
    move v10, v0

    invoke-virtual {v8, v5, v6}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v0

    .line 418
    .local v0, "endIndex":I
    if-gez v0, :cond_2e

    .line 423
    monitor-exit v7

    return-object v9

    .line 426
    :cond_2e
    invoke-virtual {v8, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-nez v11, :cond_3c

    .line 428
    add-int/lit8 v0, v0, -0x1

    .line 429
    if-gez v0, :cond_3c

    .line 434
    monitor-exit v7

    return-object v9

    .line 438
    :cond_3c
    move v9, v0

    .line 438
    .end local v0    # "endIndex":I
    .local v9, "endIndex":I
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    move-object v11, v0

    .line 439
    .local v11, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 441
    .local v12, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 442
    .local v13, "startTimeMillis":J
    move v0, v10

    .line 442
    .local v0, "i":I
    :goto_4e
    move v15, v0

    .line 442
    .end local v0    # "i":I
    .local v15, "i":I
    if-gt v15, v9, :cond_149

    .line 443
    invoke-virtual {v8, v15}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;
    :try_end_57
    .catchall {:try_start_d .. :try_end_57} :catchall_14b

    move-object/from16 v16, v0

    .line 450
    .local v16, "f":Landroid/util/AtomicFile;
    const-wide/32 v17, 0xafc8

    move-object/from16 v1, v16

    :try_start_5e
    invoke-static {v1, v11}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_bb
    .catchall {:try_start_5e .. :try_end_61} :catchall_b7

    .line 451
    .end local v16    # "f":Landroid/util/AtomicFile;
    .local v1, "f":Landroid/util/AtomicFile;
    move-object/from16 v19, v1

    :try_start_63
    iget-wide v0, v11, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 451
    .end local v1    # "f":Landroid/util/AtomicFile;
    .local v19, "f":Landroid/util/AtomicFile;
    cmp-long v0, v3, v0

    if-gez v0, :cond_70

    .line 452
    const/4 v0, 0x0

    move-object/from16 v1, p6

    invoke-interface {v1, v11, v0, v12}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6f} :catch_b5
    .catchall {:try_start_63 .. :try_end_6f} :catchall_b3

    goto :goto_72

    .line 461
    :cond_70
    move-object/from16 v1, p6

    :goto_72
    :try_start_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v0, v20, v13

    .line 462
    .local v0, "tempTimeMillis":J
    cmp-long v16, v0, v17

    if-lez v16, :cond_b2

    .line 463
    const-string v3, "UsageStatsDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout!! Files need to be parsed,Total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v9, v10

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",current index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v15, v10

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".Use time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "msec!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_ad
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_72 .. :try_end_b0} :catchall_14b

    goto/16 :goto_147

    .line 469
    .end local v0    # "tempTimeMillis":J
    :cond_b2
    goto :goto_100

    .line 461
    :catchall_b3
    move-exception v0

    goto :goto_10a

    .line 454
    :catch_b5
    move-exception v0

    goto :goto_be

    .line 461
    .end local v19    # "f":Landroid/util/AtomicFile;
    .restart local v1    # "f":Landroid/util/AtomicFile;
    :catchall_b7
    move-exception v0

    move-object/from16 v19, v1

    .line 461
    .end local v1    # "f":Landroid/util/AtomicFile;
    .restart local v19    # "f":Landroid/util/AtomicFile;
    goto :goto_10a

    .line 454
    .end local v19    # "f":Landroid/util/AtomicFile;
    .restart local v1    # "f":Landroid/util/AtomicFile;
    :catch_bb
    move-exception v0

    move-object/from16 v19, v1

    .line 455
    .end local v1    # "f":Landroid/util/AtomicFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "f":Landroid/util/AtomicFile;
    :goto_be
    :try_start_be
    const-string v1, "UsageStatsDatabase"

    const-string v3, "Failed to read usage stats file"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_b3

    .line 461
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_c5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v13

    .line 462
    .local v0, "tempTimeMillis":J
    cmp-long v3, v0, v17

    if-lez v3, :cond_b2

    .line 463
    const-string v3, "UsageStatsDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout!! Files need to be parsed,Total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v9, v10

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",current index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v15, v10

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".Use time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "msec!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_ad

    .line 442
    .end local v0    # "tempTimeMillis":J
    .end local v19    # "f":Landroid/util/AtomicFile;
    :goto_100
    add-int/lit8 v0, v15, 0x1

    .line 442
    .end local v15    # "i":I
    .local v0, "i":I
    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    goto/16 :goto_4e

    .line 461
    .end local v0    # "i":I
    .restart local v15    # "i":I
    .restart local v19    # "f":Landroid/util/AtomicFile;
    :goto_10a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v13

    .line 462
    .local v3, "tempTimeMillis":J
    cmp-long v1, v3, v17

    if-lez v1, :cond_148

    .line 463
    const-string v0, "UsageStatsDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout!! Files need to be parsed,Total:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v9, v10

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",current index"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v15, v10

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".Use time "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "msec!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_147
    goto :goto_149

    .line 469
    .end local v3    # "tempTimeMillis":J
    :cond_148
    throw v0

    .line 471
    .end local v15    # "i":I
    .end local v19    # "f":Landroid/util/AtomicFile;
    :cond_149
    :goto_149
    monitor-exit v7

    return-object v12

    .line 472
    .end local v8    # "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v9    # "endIndex":I
    .end local v10    # "startIndex":I
    .end local v11    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v12    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v13    # "startTimeMillis":J
    :catchall_14b
    move-exception v0

    goto :goto_164

    .line 398
    :cond_14d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :goto_164
    monitor-exit v7
    :try_end_165
    .catchall {:try_start_c5 .. :try_end_165} :catchall_14b

    throw v0
.end method
