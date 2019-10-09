.class public final Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShutdownEventReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 410
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 416
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_22

    .line 419
    :cond_21
    return-void

    .line 422
    :cond_22
    const-string v0, "StatsCompanionService"

    const-string v1, "StatsCompanionService noticed a shutdown."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    # getter for: Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 424
    :try_start_2e
    # getter for: Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 425
    const-string v1, "StatsCompanionService"

    const-string v2, "Could not access statsd to inform it of a shutdown event."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_4f

    return-void

    .line 429
    :cond_3d
    :try_start_3d
    # getter for: Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IStatsManager;->informDeviceShutdown()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_45
    .catchall {:try_start_3d .. :try_end_44} :catchall_4f

    .line 432
    goto :goto_4d

    .line 430
    :catch_45
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/Exception;
    :try_start_46
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd of a shutdown event."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4d
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_4f

    throw v1
.end method
