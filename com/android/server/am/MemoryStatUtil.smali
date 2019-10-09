.class final Lcom/android/server/am/MemoryStatUtil;
.super Ljava/lang/Object;
.source "MemoryStatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    }
.end annotation


# static fields
.field private static final CACHE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final MEMCG_TEST_PATH:Ljava/lang/String; = "/dev/memcg/apps/memory.stat"

.field private static final MEMORY_STAT_FILE_FMT:Ljava/lang/String; = "/dev/memcg/apps/uid_%d/pid_%d/memory.stat"

.field private static final PGFAULT:Ljava/util/regex/Pattern;

.field private static final PGFAULT_INDEX:I = 0x9

.field private static final PGMAJFAULT:Ljava/util/regex/Pattern;

.field private static final PGMAJFAULT_INDEX:I = 0xb

.field private static final PROC_STAT_FILE_FMT:Ljava/lang/String; = "/proc/%d/stat"

.field private static final RSS_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final RSS_IN_BYTES_INDEX:I = 0x17

.field private static final SWAP_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static volatile sDeviceHasMemCg:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-string/jumbo v0, "total_pgfault (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    .line 49
    const-string/jumbo v0, "total_pgmajfault (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    .line 50
    const-string/jumbo v0, "total_rss (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    .line 51
    const-string/jumbo v0, "total_cache (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 52
    const-string/jumbo v0, "total_swap (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasMemcg()Z
    .registers 2

    .line 164
    sget-object v0, Lcom/android/server/am/MemoryStatUtil;->sDeviceHasMemCg:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    .line 165
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/memcg/apps/memory.stat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->sDeviceHasMemCg:Ljava/lang/Boolean;

    .line 167
    :cond_15
    sget-object v0, Lcom/android/server/am/MemoryStatUtil;->sDeviceHasMemCg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 9
    .param p0, "memoryStatContents"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 117
    if-eqz p0, :cond_9e

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_9e

    .line 121
    :cond_a
    new-instance v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    invoke-direct {v0}, Lcom/android/server/am/MemoryStatUtil$MemoryStat;-><init>()V

    .line 123
    .local v0, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 124
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2b

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2c

    :cond_2b
    move-wide v6, v3

    :goto_2c
    iput-wide v6, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 125
    sget-object v2, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_48

    :cond_47
    move-wide v6, v3

    :goto_48
    iput-wide v6, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 127
    sget-object v2, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_64

    :cond_63
    move-wide v6, v3

    :goto_64
    iput-wide v6, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 129
    sget-object v2, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_80

    :cond_7f
    move-wide v6, v3

    :goto_80
    iput-wide v6, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    .line 131
    sget-object v2, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    :cond_9b
    iput-wide v3, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 133
    return-object v0

    .line 118
    .end local v0    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_9e
    :goto_9e
    const/4 v0, 0x0

    return-object v0
.end method

.method static parseMemoryStatFromProcfs(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 5
    .param p0, "procStatContents"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 142
    const/4 v0, 0x0

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_46

    .line 146
    :cond_a
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "splits":[Ljava/lang/String;
    array-length v2, v1

    const/16 v3, 0x18

    if-ge v2, v3, :cond_16

    .line 148
    return-object v0

    .line 151
    :cond_16
    new-instance v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    invoke-direct {v0}, Lcom/android/server/am/MemoryStatUtil$MemoryStat;-><init>()V

    .line 152
    .local v0, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 153
    const/16 v2, 0xb

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 154
    const/16 v2, 0x17

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 155
    return-object v0

    .line 143
    .end local v0    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .end local v1    # "splits":[Ljava/lang/String;
    :cond_46
    :goto_46
    return-object v0
.end method

.method private static readFileContents(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 100
    return-object v2

    .line 104
    :cond_d
    const/4 v1, 0x0

    :try_start_e
    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_13

    return-object v1

    .line 105
    :catch_13
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ActivityManager"

    const-string v4, "Failed to read file:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    return-object v2
.end method

.method static readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 71
    invoke-static {}, Lcom/android/server/am/MemoryStatUtil;->hasMemcg()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromMemcg(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {p1}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method static readMemoryStatFromMemcg(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 7
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 81
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "/dev/memcg/apps/uid_%d/pid_%d/memory.stat"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v1

    return-object v1
.end method

.method static readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .registers 6
    .param p0, "pid"    # I

    .line 92
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "/proc/%d/stat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromProcfs(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v1

    return-object v1
.end method
