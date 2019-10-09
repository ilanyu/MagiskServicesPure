.class Lcom/android/server/stats/StatsCompanionService$1;
.super Landroid/content/BroadcastReceiver;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/stats/StatsCompanionService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/StatsCompanionService;


# direct methods
.method constructor <init>(Lcom/android/server/stats/StatsCompanionService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/stats/StatsCompanionService;

    .line 168
    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 171
    # getter for: Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_5
    # invokes: Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$300()Landroid/os/IStatsManager;

    move-result-object v1

    # setter for: Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;
    invoke-static {v1}, Lcom/android/server/stats/StatsCompanionService;->access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;

    .line 173
    # getter for: Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 174
    const-string v1, "StatsCompanionService"

    const-string v2, "Could not access statsd for UserUpdateReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_30

    return-void

    .line 180
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    # invokes: Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/server/stats/StatsCompanionService;->access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_30

    .line 184
    goto :goto_2e

    .line 181
    :catch_21
    move-exception v1

    .line 182
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd latest update of all apps"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    # invokes: Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V
    invoke-static {v2}, Lcom/android/server/stats/StatsCompanionService;->access$500(Lcom/android/server/stats/StatsCompanionService;)V

    .line 185
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2e
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_30

    throw v1
.end method
