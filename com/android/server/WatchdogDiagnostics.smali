.class Lcom/android/server/WatchdogDiagnostics;
.super Ljava/lang/Object;
.source "WatchdogDiagnostics.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diagnoseCheckers(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p0, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const-string v2, "Watchdog"

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 74
    .local v0, "out":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    .line 75
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    .line 76
    .local v3, "blockedThread":Ljava/lang/Thread;
    invoke-static {v3, v0}, Lcom/android/server/WatchdogDiagnostics;->printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 77
    goto :goto_65

    .line 81
    :cond_28
    const-string v4, "Watchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " stack trace:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 83
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v5, v4

    move v6, v1

    :goto_48
    if-ge v6, v5, :cond_65

    aget-object v7, v4, v6

    .line 84
    .local v7, "element":Ljava/lang/StackTraceElement;
    const-string v8, "Watchdog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v7    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 74
    .end local v3    # "blockedThread":Ljava/lang/Thread;
    .end local v4    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 87
    .end local v2    # "i":I
    :cond_68
    return-void
.end method

.method private static getBlockedOnString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "blockedOn"    # Ljava/lang/Object;

    .line 37
    const-string v0, "- waiting to lock <0x%08x> (a %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 37
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLockedString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "heldLock"    # Ljava/lang/Object;

    .line 42
    const-string v0, "- locked <0x%08x> (a %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 42
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z
    .registers 13
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "out"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    invoke-static {p0}, Ldalvik/system/VMStack;->getAnnotatedThreadStackTrace(Ljava/lang/Thread;)[Ldalvik/system/AnnotatedStackTraceElement;

    move-result-object v0

    .line 53
    .local v0, "stack":[Ldalvik/system/AnnotatedStackTraceElement;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 54
    return v1

    .line 56
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " annotated stack trace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    array-length v2, v0

    move v3, v1

    :goto_22
    if-ge v3, v2, :cond_8e

    aget-object v4, v0, v3

    .line 58
    .local v4, "element":Ldalvik/system/AnnotatedStackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ldalvik/system/AnnotatedStackTraceElement;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Ldalvik/system/AnnotatedStackTraceElement;->getBlockedOn()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ldalvik/system/AnnotatedStackTraceElement;->getBlockedOn()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/WatchdogDiagnostics;->getBlockedOnString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    :cond_60
    invoke-virtual {v4}, Ldalvik/system/AnnotatedStackTraceElement;->getHeldLocks()[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8b

    .line 63
    invoke-virtual {v4}, Ldalvik/system/AnnotatedStackTraceElement;->getHeldLocks()[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_6c
    if-ge v7, v6, :cond_8b

    aget-object v8, v5, v7

    .line 64
    .local v8, "held":Ljava/lang/Object;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/WatchdogDiagnostics;->getLockedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .end local v8    # "held":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 57
    .end local v4    # "element":Ldalvik/system/AnnotatedStackTraceElement;
    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 68
    :cond_8e
    const/4 v1, 0x1

    return v1
.end method
