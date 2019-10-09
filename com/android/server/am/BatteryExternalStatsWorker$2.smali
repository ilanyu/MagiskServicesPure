.class Lcom/android/server/am/BatteryExternalStatsWorker$2;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 384
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$2;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$2;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    .line 388
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$2;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    # getter for: Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 389
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method
