.class public final Lcom/android/server/UiThread;
.super Lcom/android/server/ServiceThread;
.source "UiThread.java"


# static fields
.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/UiThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 36
    const-string v0, "android.ui"

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 37
    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 5

    .line 47
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    if-nez v0, :cond_34

    .line 48
    new-instance v0, Lcom/android/server/UiThread;

    invoke-direct {v0}, Lcom/android/server/UiThread;-><init>()V

    sput-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 49
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Lcom/android/server/UiThread;->start()V

    .line 50
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 51
    .local v0, "looper":Landroid/os/Looper;
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->enableMonitor(Z)V

    .line 54
    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 56
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v2}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    .line 58
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_34
    return-void
.end method

.method public static get()Lcom/android/server/UiThread;
    .registers 2

    .line 61
    const-class v0, Lcom/android/server/UiThread;

    monitor-enter v0

    .line 62
    :try_start_3
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 63
    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 68
    const-class v0, Lcom/android/server/UiThread;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 70
    sget-object v1, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 42
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroup(II)V

    .line 43
    invoke-super {p0}, Lcom/android/server/ServiceThread;->run()V

    .line 44
    return-void
.end method
