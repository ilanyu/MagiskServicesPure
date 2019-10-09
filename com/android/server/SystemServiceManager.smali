.class public Lcom/android/server/SystemServiceManager;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"


# static fields
.field private static final SERVICE_CALL_WARN_TIME_MS:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SystemServiceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPhase:I

.field private mRuntimeRestarted:Z

.field private mRuntimeStartElapsedTime:J

.field private mRuntimeStartUptime:J

.field private mSafeMode:Z

.field private final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 51
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    .registers 8
    .param p1, "duration"    # J
    .param p3, "service"    # Lcom/android/server/SystemService;
    .param p4, "operation"    # Ljava/lang/String;

    .line 316
    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-lez v0, :cond_34

    .line 317
    const-string v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_34
    return-void
.end method


# virtual methods
.method public cleanupUser(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .line 256
    const-string v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onCleanupUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "serviceLen":I
    const/4 v1, 0x0

    .line 258
    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_87

    .line 259
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemService;

    .line 260
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCleanupUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 264
    .local v6, "time":J
    :try_start_4b
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onCleanupUser(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 268
    goto :goto_76

    .line 265
    :catch_4f
    move-exception v3

    .line 266
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "SystemServiceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure reporting cleanup of user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 266
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-string/jumbo v3, "onCleanupUser"

    invoke-direct {p0, v8, v9, v2, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 270
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 258
    .end local v2    # "service":Lcom/android/server/SystemService;
    .end local v6    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 272
    .end local v1    # "i":I
    :cond_87
    return-void
.end method

.method public dump()V
    .registers 6

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Current phase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, "Services:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 330
    .local v1, "startedLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v1, :cond_42

    .line 331
    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SystemService;

    .line 332
    .local v3, "service":Lcom/android/server/SystemService;
    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    .line 334
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .end local v3    # "service":Lcom/android/server/SystemService;
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 337
    .end local v2    # "i":I
    :cond_42
    const-string v2, "SystemServiceManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method public getRuntimeStartElapsedTime()J
    .registers 3

    .line 298
    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    return-wide v0
.end method

.method public getRuntimeStartUptime()J
    .registers 3

    .line 305
    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    return-wide v0
.end method

.method public isBootCompleted()Z
    .registers 3

    .line 176
    iget v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRuntimeRestarted()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    return v0
.end method

.method public isSafeMode()Z
    .registers 2

    .line 284
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    return v0
.end method

.method setSafeMode(Z)V
    .registers 2
    .param p1, "safeMode"    # Z

    .line 276
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    .line 277
    return-void
.end method

.method setStartInfo(ZJJ)V
    .registers 6
    .param p1, "runtimeRestarted"    # Z
    .param p2, "runtimeStartElapsedTime"    # J
    .param p4, "runtimeStartUptime"    # J

    .line 310
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 311
    iput-wide p2, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    .line 312
    iput-wide p4, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    .line 313
    return-void
.end method

.method public startBootPhase(I)V
    .registers 13
    .param p1, "phase"    # I

    .line 141
    iget v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    if-le p1, v0, :cond_bd

    .line 144
    iput p1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 146
    const-string v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting phase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-wide/32 v0, 0x80000

    :try_start_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnBootPhase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 150
    .local v2, "serviceLen":I
    const/4 v3, 0x0

    .line 150
    .local v3, "i":I
    :goto_3c
    if-ge v3, v2, :cond_96

    .line 151
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SystemService;

    .line 152
    .local v4, "service":Lcom/android/server/SystemService;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 153
    .local v5, "time":J
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_55
    .catchall {:try_start_21 .. :try_end_55} :catchall_b8

    .line 155
    :try_start_55
    iget v7, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v4, v7}, Lcom/android/server/SystemService;->onBootPhase(I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_6c
    .catchall {:try_start_55 .. :try_end_5a} :catchall_b8

    .line 161
    nop

    .line 162
    :try_start_5b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-string/jumbo v9, "onBootPhase"

    invoke-direct {p0, v7, v8, v4, v9}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 163
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 150
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "time":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 156
    .restart local v4    # "service":Lcom/android/server/SystemService;
    .restart local v5    # "time":J
    :catch_6c
    move-exception v7

    .line 157
    .local v7, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to boot service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": onBootPhase threw an exception during phase "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_96
    .catchall {:try_start_5b .. :try_end_96} :catchall_b8

    .line 166
    .end local v2    # "serviceLen":I
    .end local v3    # "i":I
    .end local v4    # "service":Lcom/android/server/SystemService;
    .end local v5    # "time":J
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_96
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 167
    nop

    .line 169
    const-string v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting phase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 166
    :catchall_b8
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 142
    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Next phase must be larger than previous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/SystemService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 86
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-wide/32 v0, 0x80000

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "name":Ljava/lang/String;
    const-string v3, "SystemServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 91
    const-class v3, Lcom/android/server/SystemService;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_f4

    if-eqz v3, :cond_cf

    .line 97
    const/4 v3, 0x1

    :try_start_3a
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 98
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    aput-object v5, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SystemService;
    :try_end_51
    .catch Ljava/lang/InstantiationException; {:try_start_3a .. :try_end_51} :catch_b2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_51} :catch_95
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_51} :catch_78
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_51} :catch_5b
    .catchall {:try_start_3a .. :try_end_51} :catchall_f4

    .line 111
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .local v3, "service":Lcom/android/server/SystemService;, "TT;"
    nop

    .line 109
    nop

    .line 113
    :try_start_53
    invoke-virtual {p0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_f4

    .line 114
    nop

    .line 116
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 114
    return-object v3

    .line 108
    .end local v3    # "service":Lcom/android/server/SystemService;, "TT;"
    :catch_5b
    move-exception v3

    .line 109
    .local v3, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_5c
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": service constructor threw an exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 105
    .end local v3    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_78
    move-exception v3

    .line 106
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": service must have a public constructor with a Context argument"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 102
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_95
    move-exception v3

    .line 103
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": service must have a public constructor with a Context argument"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 99
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_b2
    move-exception v3

    .line 100
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": service could not be instantiated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 92
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :cond_cf
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": service must extend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/android/server/SystemService;

    .line 93
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f4
    .catchall {:try_start_5c .. :try_end_f4} :catchall_f4

    .line 116
    .end local v2    # "name":Ljava/lang/String;
    :catchall_f4
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 63
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_b

    .line 71
    .local v0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    nop

    .line 66
    nop

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    return-object v1

    .line 64
    .end local v0    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    :catch_b
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServiceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": service class not found, usually indicates that the caller should have called PackageManager.hasSystemFeature() to check whether the feature is available on this device before trying to start the services that implement it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startService(Lcom/android/server/SystemService;)V
    .registers 8
    .param p1, "service"    # Lcom/android/server/SystemService;

    .line 122
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 126
    .local v0, "time":J
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/SystemService;->onStart()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_c} :catch_19

    .line 130
    nop

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string/jumbo v4, "onStart"

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 132
    return-void

    .line 127
    :catch_19
    move-exception v2

    .line 128
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": onStart threw an exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public startUser(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .line 180
    const-string v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onStartUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 182
    .local v0, "serviceLen":I
    const/4 v1, 0x0

    .line 182
    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_87

    .line 183
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemService;

    .line 184
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 188
    .local v6, "time":J
    :try_start_4b
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onStartUser(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 192
    goto :goto_76

    .line 189
    :catch_4f
    move-exception v3

    .line 190
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "SystemServiceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure reporting start of user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 190
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-string/jumbo v3, "onStartUser "

    invoke-direct {p0, v8, v9, v2, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 194
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 182
    .end local v2    # "service":Lcom/android/server/SystemService;
    .end local v6    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 196
    .end local v1    # "i":I
    :cond_87
    return-void
.end method

.method public stopUser(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .line 237
    const-string v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onStopUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 239
    .local v0, "serviceLen":I
    const/4 v1, 0x0

    .line 239
    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_87

    .line 240
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemService;

    .line 241
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStopUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 245
    .local v6, "time":J
    :try_start_4b
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onStopUser(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 249
    goto :goto_76

    .line 246
    :catch_4f
    move-exception v3

    .line 247
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "SystemServiceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure reporting stop of user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 247
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-string/jumbo v3, "onStopUser"

    invoke-direct {p0, v8, v9, v2, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 251
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    .end local v2    # "service":Lcom/android/server/SystemService;
    .end local v6    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 253
    .end local v1    # "i":I
    :cond_87
    return-void
.end method

.method public switchUser(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .line 218
    const-string v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling switchUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 220
    .local v0, "serviceLen":I
    const/4 v1, 0x0

    .line 220
    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_87

    .line 221
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemService;

    .line 222
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 226
    .local v6, "time":J
    :try_start_4b
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 230
    goto :goto_76

    .line 227
    :catch_4f
    move-exception v3

    .line 228
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "SystemServiceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure reporting switch of user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-string/jumbo v3, "onSwitchUser"

    invoke-direct {p0, v8, v9, v2, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 232
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 220
    .end local v2    # "service":Lcom/android/server/SystemService;
    .end local v6    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 234
    .end local v1    # "i":I
    :cond_87
    return-void
.end method

.method public unlockUser(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .line 199
    const-string v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onUnlockUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 201
    .local v0, "serviceLen":I
    const/4 v1, 0x0

    .line 201
    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_87

    .line 202
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemService;

    .line 203
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUnlockUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 207
    .local v6, "time":J
    :try_start_4b
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onUnlockUser(I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 211
    goto :goto_76

    .line 208
    :catch_4f
    move-exception v3

    .line 209
    .local v3, "ex":Ljava/lang/Exception;
    const-string v8, "SystemServiceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure reporting unlock of user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 209
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-string/jumbo v3, "onUnlockUser "

    invoke-direct {p0, v8, v9, v2, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 213
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 201
    .end local v2    # "service":Lcom/android/server/SystemService;
    .end local v6    # "time":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 215
    .end local v1    # "i":I
    :cond_87
    return-void
.end method
