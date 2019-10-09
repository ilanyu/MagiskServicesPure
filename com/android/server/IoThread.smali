.class public final Lcom/android/server/IoThread;
.super Lcom/android/server/ServiceThread;
.source "IoThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/IoThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 32
    const-string v0, "android.io"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 33
    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 3

    .line 36
    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    if-nez v0, :cond_29

    .line 37
    new-instance v0, Lcom/android/server/IoThread;

    invoke-direct {v0}, Lcom/android/server/IoThread;-><init>()V

    sput-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    .line 38
    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v0}, Lcom/android/server/IoThread;->start()V

    .line 39
    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    .line 42
    :cond_29
    return-void
.end method

.method public static get()Lcom/android/server/IoThread;
    .registers 2

    .line 45
    const-class v0, Lcom/android/server/IoThread;

    monitor-enter v0

    .line 46
    :try_start_3
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    .line 47
    sget-object v1, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 52
    const-class v0, Lcom/android/server/IoThread;

    monitor-enter v0

    .line 53
    :try_start_3
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    .line 54
    sget-object v1, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
