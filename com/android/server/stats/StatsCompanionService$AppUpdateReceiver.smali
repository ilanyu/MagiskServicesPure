.class final Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppUpdateReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 303
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/StatsCompanionService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/stats/StatsCompanionService$1;

    .line 303
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 311
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string v0, "android.intent.extra.REPLACING"

    .line 312
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 313
    return-void

    .line 316
    :cond_16
    # getter for: Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 317
    :try_start_1b
    # getter for: Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 318
    const-string v1, "StatsCompanionService"

    const-string v2, "Could not access statsd to inform it of an app update"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_8e

    return-void

    .line 322
    :cond_2a
    :try_start_2a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 323
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 324
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 325
    .local v3, "uid":I
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 326
    .local v1, "replacing":Z
    if-nez v1, :cond_5b

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 330
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "app":Ljava/lang/String;
    # getter for: Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Landroid/os/IStatsManager;->informOnePackageRemoved(Ljava/lang/String;I)V

    .line 333
    .end local v1    # "replacing":Z
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "uid":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "app":Ljava/lang/String;
    :cond_5b
    goto :goto_83

    .line 334
    :cond_5c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 335
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 336
    .restart local v2    # "b":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 337
    .restart local v3    # "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "app":Ljava/lang/String;
    const/high16 v5, 0x400000

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 339
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    # getter for: Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-interface {v6, v4, v3, v7, v8}, Landroid/os/IStatsManager;->informOnePackage(Ljava/lang/String;IJ)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_83} :catch_84
    .catchall {:try_start_2a .. :try_end_83} :catchall_8e

    .line 343
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "uid":I
    .end local v4    # "app":Ljava/lang/String;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :goto_83
    goto :goto_8c

    .line 341
    :catch_84
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    :try_start_85
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd of an app update"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8c
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_85 .. :try_end_90} :catchall_8e

    throw v1
.end method
