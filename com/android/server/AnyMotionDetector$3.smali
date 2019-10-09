.class Lcom/android/server/AnyMotionDetector$3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AnyMotionDetector;

    .line 328
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 331
    const/4 v0, -0x1

    .line 332
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$000(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 333
    :try_start_8
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->access$1000(Lcom/android/server/AnyMotionDetector;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 334
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z
    invoke-static {v2, v3}, Lcom/android/server/AnyMotionDetector;->access$1002(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 338
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    # invokes: Lcom/android/server/AnyMotionDetector;->stopOrientationMeasurementLocked()I
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->access$300(Lcom/android/server/AnyMotionDetector;)I

    move-result v2

    move v0, v2

    .line 339
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3e

    .line 340
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->access$500(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/AnyMotionDetector;->access$400(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    # setter for: Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z
    invoke-static {v2, v3}, Lcom/android/server/AnyMotionDetector;->access$602(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 342
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->access$700(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    .line 345
    :cond_3e
    monitor-exit v1

    .line 346
    return-void

    .line 345
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_40

    throw v2
.end method
