.class public Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;
.super Landroid/os/FileObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpStackFileObserver"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TRACE_DUMP_TIMEOUT_MS:I = 0x2710


# instance fields
.field private mClosed:Z

.field private final mTracesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "tracesPath"    # Ljava/lang/String;

    .line 6566
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 6567
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    .line 6568
    return-void
.end method


# virtual methods
.method public dumpWithTimeout(IJ)J
    .registers 15
    .param p1, "pid"    # I
    .param p2, "timeout"    # J

    .line 6577
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 6578
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6580
    .local v0, "start":J
    const-wide/16 v2, 0x2710

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 6581
    .local v2, "waitTime":J
    monitor-enter p0

    .line 6583
    :try_start_f
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_15
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    .line 6586
    goto :goto_1b

    .line 6587
    :catchall_13
    move-exception v4

    goto :goto_6b

    .line 6584
    :catch_15
    move-exception v4

    .line 6585
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_16
    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6587
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_13

    .line 6591
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 6592
    .local v4, "timeWaited":J
    cmp-long v6, v4, p2

    if-ltz v6, :cond_26

    .line 6593
    return-wide v4

    .line 6596
    :cond_26
    iget-boolean v6, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    if-nez v6, :cond_61

    .line 6597
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Didn\'t see close of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". Attempting native stack collection."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6600
    const-wide/16 v6, 0x7d0

    sub-long v8, p2, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 6603
    .local v6, "nativeDumpTimeoutMs":J
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    const-wide/16 v9, 0x3e8

    div-long v9, v6, v9

    long-to-int v9, v9

    invoke-static {p1, v8, v9}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    .line 6607
    .end local v6    # "nativeDumpTimeoutMs":J
    :cond_61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 6608
    .local v6, "end":J
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    .line 6610
    sub-long v8, v6, v0

    return-wide v8

    .line 6587
    .end local v4    # "timeWaited":J
    .end local v6    # "end":J
    :goto_6b
    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_13

    throw v4
.end method

.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 6572
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    .line 6573
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 6574
    monitor-exit p0

    return-void

    .line 6571
    .end local p1    # "event":I
    .end local p2    # "path":Ljava/lang/String;
    :catchall_9
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;
    throw p1
.end method
