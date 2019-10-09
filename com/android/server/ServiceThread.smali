.class public Lcom/android/server/ServiceThread;
.super Landroid/os/HandlerThread;
.source "ServiceThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceThread"


# instance fields
.field private final mAllowIo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "allowIo"    # Z

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-boolean p3, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 41
    iget-boolean v0, p0, Lcom/android/server/ServiceThread;->mAllowIo:Z

    if-nez v0, :cond_c

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 45
    :cond_c
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 46
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 51
    :try_start_1
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 53
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_e

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->enableMonitorMessage(Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 56
    :cond_e
    monitor-exit p0

    return-void

    .line 50
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_10
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/ServiceThread;
    throw v0
.end method
