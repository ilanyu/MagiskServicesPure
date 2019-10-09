.class Lcom/android/server/AnyMotionDetector$1;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    .line 290
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 313
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 293
    const/4 v0, -0x1

    .line 294
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$000(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 295
    :try_start_8
    new-instance v8, Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v5, v2, v9

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v6, v2, v6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v7, v2, v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    move-object v2, v8

    .line 297
    .local v2, "accelDatum":Lcom/android/server/AnyMotionDetector$Vector3;
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;
    invoke-static {v3}, Lcom/android/server/AnyMotionDetector;->access$100(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V

    .line 300
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;
    invoke-static {v3}, Lcom/android/server/AnyMotionDetector;->access$100(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getSampleCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I
    invoke-static {v4}, Lcom/android/server/AnyMotionDetector;->access$200(Lcom/android/server/AnyMotionDetector;)I

    move-result v4

    if-lt v3, v4, :cond_44

    .line 301
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    # invokes: Lcom/android/server/AnyMotionDetector;->stopOrientationMeasurementLocked()I
    invoke-static {v3}, Lcom/android/server/AnyMotionDetector;->access$300(Lcom/android/server/AnyMotionDetector;)I

    move-result v3

    move v0, v3

    .line 303
    .end local v2    # "accelDatum":Lcom/android/server/AnyMotionDetector$Vector3;
    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_66

    .line 304
    const/4 v1, -0x1

    if-eq v0, v1, :cond_65

    .line 305
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$500(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->access$400(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    # setter for: Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z
    invoke-static {v1, v9}, Lcom/android/server/AnyMotionDetector;->access$602(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 307
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    # getter for: Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$700(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    .line 309
    :cond_65
    return-void

    .line 303
    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v2
.end method
