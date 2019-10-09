.class Lcom/android/server/BatteryService$3;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .line 306
    iput-object p1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 309
    const-string v0, "1"

    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    .local v0, "invalidCharger":I
    iget-object v1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 311
    :try_start_13
    iget-object v2, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mInvalidCharger:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)I

    move-result v2

    if-eq v2, v0, :cond_20

    .line 312
    iget-object v2, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mInvalidCharger:I
    invoke-static {v2, v0}, Lcom/android/server/BatteryService;->access$702(Lcom/android/server/BatteryService;I)I

    .line 314
    :cond_20
    monitor-exit v1

    .line 315
    return-void

    .line 314
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw v2
.end method
