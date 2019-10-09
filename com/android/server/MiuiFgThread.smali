.class public final Lcom/android/server/MiuiFgThread;
.super Lcom/android/server/ServiceThread;
.source "MiuiFgThread.java"


# static fields
.field private static final IS_STABLE_VERSION:Z

.field private static final WATCHDOG_TIMEOUT:J = 0x1d4c0L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/MiuiFgThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/android/server/MiuiFgThread;->IS_STABLE_VERSION:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 42
    const-string/jumbo v0, "miui.fg"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 43
    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 4

    .line 46
    sget-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    if-nez v0, :cond_31

    .line 47
    new-instance v0, Lcom/android/server/MiuiFgThread;

    invoke-direct {v0}, Lcom/android/server/MiuiFgThread;-><init>()V

    sput-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    .line 48
    sget-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    invoke-virtual {v0}, Lcom/android/server/MiuiFgThread;->start()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiFgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/MiuiFgThread;->sHandler:Landroid/os/Handler;

    .line 50
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    sget-object v1, Lcom/android/server/MiuiFgThread;->sHandler:Landroid/os/Handler;

    sget-boolean v2, Lcom/android/server/MiuiFgThread;->IS_STABLE_VERSION:Z

    if-eqz v2, :cond_2b

    .line 51
    const-wide/32 v2, 0x927c0

    goto :goto_2e

    :cond_2b
    const-wide/32 v2, 0x1d4c0

    .line 50
    :goto_2e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 53
    :cond_31
    return-void
.end method

.method public static get()Lcom/android/server/MiuiFgThread;
    .registers 2

    .line 56
    const-class v0, Lcom/android/server/MiuiFgThread;

    monitor-enter v0

    .line 57
    :try_start_3
    invoke-static {}, Lcom/android/server/MiuiFgThread;->ensureThreadLocked()V

    .line 58
    sget-object v1, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 63
    const-class v0, Lcom/android/server/MiuiFgThread;

    monitor-enter v0

    .line 64
    :try_start_3
    invoke-static {}, Lcom/android/server/MiuiFgThread;->ensureThreadLocked()V

    .line 65
    sget-object v1, Lcom/android/server/MiuiFgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static initialMiuiFgThread()V
    .registers 2

    .line 70
    const-class v0, Lcom/android/server/MiuiFgThread;

    monitor-enter v0

    .line 71
    :try_start_3
    invoke-static {}, Lcom/android/server/MiuiFgThread;->ensureThreadLocked()V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
