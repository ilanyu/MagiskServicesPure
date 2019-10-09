.class final Lcom/android/server/power/PowerManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3956
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 3957
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3958
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 3962
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3964
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updateScreenProjectionLocked()Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3965
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHangUpEnabled:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3966
    :cond_1c
    monitor-exit v0

    return-void

    .line 3969
    :cond_1e
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;)V

    .line 3970
    monitor-exit v0

    .line 3971
    return-void

    .line 3970
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1
.end method
