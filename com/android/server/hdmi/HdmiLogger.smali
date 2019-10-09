.class final Lcom/android/server/hdmi/HdmiLogger;
.super Ljava/lang/Object;
.source "HdmiLogger.java"


# static fields
.field private static final DEBUG:Z

.field private static final ERROR_LOG_DURATTION_MILLIS:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "HDMI"

.field private static final sLogger:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/hdmi/HdmiLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorTimingCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWarningTimingCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const-string v0, "HDMI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiLogger;->DEBUG:Z

    .line 48
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mWarningTimingCache:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mErrorTimingCache:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method private static buildMessage(Ljava/lang/String;Landroid/util/Pair;)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    .local p1, "timing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_e

    const/4 v1, 0x1

    goto :goto_16

    :cond_e
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method static final varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "objs"    # [Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debugInternal(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private debugInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "logMessage"    # Ljava/lang/String;

    .line 87
    sget-boolean v0, Lcom/android/server/hdmi/HdmiLogger;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 88
    const-string v0, "HDMI"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_9
    return-void
.end method

.method static final varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "objs"    # [Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->errorInternal(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private errorInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "logMessage"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mErrorTimingCache:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->updateLog(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "log":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 78
    const-string v1, "HDMI"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_11
    return-void
.end method

.method private static getLogger()Lcom/android/server/hdmi/HdmiLogger;
    .registers 2

    .line 101
    sget-object v0, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiLogger;

    .line 102
    .local v0, "logger":Lcom/android/server/hdmi/HdmiLogger;
    if-nez v0, :cond_15

    .line 103
    new-instance v1, Lcom/android/server/hdmi/HdmiLogger;

    invoke-direct {v1}, Lcom/android/server/hdmi/HdmiLogger;-><init>()V

    move-object v0, v1

    .line 104
    sget-object v1, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    :cond_15
    return-object v0
.end method

.method private static increaseLogCount(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 130
    .local p0, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 131
    .local v0, "timing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_22

    .line 132
    new-instance v1, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_22
    return-void
.end method

.method private static shouldLogNow(Landroid/util/Pair;J)Z
    .registers 7
    .param p1, "curTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;J)Z"
        }
    .end annotation

    .line 137
    .local p0, "timing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_15

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private static final toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "objs"    # [Ljava/lang/Object;

    .line 93
    array-length v0, p1

    if-lez v0, :cond_8

    .line 94
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_8
    return-object p0
.end method

.method private static updateLog(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "logMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 110
    .local p0, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 111
    .local v0, "curTime":J
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 112
    .local v2, "timing":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->shouldLogNow(Landroid/util/Pair;J)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 113
    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiLogger;->buildMessage(Ljava/lang/String;Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "log":Ljava/lang/String;
    new-instance v4, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-object v3

    .line 117
    .end local v3    # "log":Ljava/lang/String;
    :cond_26
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->increaseLogCount(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 119
    const-string v3, ""

    return-object v3
.end method

.method static final varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "objs"    # [Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->warningInternal(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private warningInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "logMessage"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mWarningTimingCache:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->updateLog(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "log":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 67
    const-string v1, "HDMI"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_11
    return-void
.end method
