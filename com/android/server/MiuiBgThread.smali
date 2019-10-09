.class public final Lcom/android/server/MiuiBgThread;
.super Lcom/android/server/ServiceThread;
.source "MiuiBgThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/MiuiBgThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 29
    const-string/jumbo v0, "miui.bg"

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 30
    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 2

    .line 33
    sget-object v0, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    if-nez v0, :cond_1d

    .line 34
    new-instance v0, Lcom/android/server/MiuiBgThread;

    invoke-direct {v0}, Lcom/android/server/MiuiBgThread;-><init>()V

    sput-object v0, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    .line 35
    sget-object v0, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    invoke-virtual {v0}, Lcom/android/server/MiuiBgThread;->start()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/MiuiBgThread;->sHandler:Landroid/os/Handler;

    .line 38
    :cond_1d
    return-void
.end method

.method public static get()Lcom/android/server/MiuiBgThread;
    .registers 2

    .line 41
    const-class v0, Lcom/android/server/MiuiBgThread;

    monitor-enter v0

    .line 42
    :try_start_3
    invoke-static {}, Lcom/android/server/MiuiBgThread;->ensureThreadLocked()V

    .line 43
    sget-object v1, Lcom/android/server/MiuiBgThread;->sInstance:Lcom/android/server/MiuiBgThread;

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 48
    const-class v0, Lcom/android/server/MiuiBgThread;

    monitor-enter v0

    .line 49
    :try_start_3
    invoke-static {}, Lcom/android/server/MiuiBgThread;->ensureThreadLocked()V

    .line 50
    sget-object v1, Lcom/android/server/MiuiBgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
