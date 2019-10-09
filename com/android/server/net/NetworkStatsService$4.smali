.class Lcom/android/server/net/NetworkStatsService$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;

    .line 996
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1002
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1003
    .local v0, "uid":I
    if-ne v0, v1, :cond_a

    return-void

    .line 1005
    :cond_a
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1007
    :try_start_11
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Z

    move-result v2

    if-nez v2, :cond_1b

    monitor-exit v1

    return-void

    .line 1008
    :cond_1b
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1100(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_46

    .line 1010
    :try_start_24
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    # invokes: Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V
    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsService;->access$1200(Lcom/android/server/net/NetworkStatsService;[I)V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_3b

    .line 1012
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1100(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1013
    nop

    .line 1014
    monitor-exit v1

    .line 1015
    return-void

    .line 1012
    :catchall_3b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$1100(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 1014
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_46

    throw v2
.end method
