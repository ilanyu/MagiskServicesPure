.class Lcom/android/server/DeviceIdleController$3;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 376
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mState:I
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 380
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 381
    :try_start_c
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 382
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1

    .line 384
    :cond_16
    :goto_16
    return-void
.end method
