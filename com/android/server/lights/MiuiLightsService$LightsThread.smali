.class Lcom/android/server/lights/MiuiLightsService$LightsThread;
.super Ljava/lang/Thread;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightsThread"
.end annotation


# instance fields
.field private final LOOP_LIMIT:I

.field private final lightStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/lights/LightState;",
            ">;"
        }
    .end annotation
.end field

.field private loop_index:I

.field private mForceStop:Z

.field private final styleType:I

.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/MiuiLightsService;Ljava/util/List;II)V
    .registers 6
    .param p3, "styleType"    # I
    .param p4, "mUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/lights/LightState;",
            ">;II)V"
        }
    .end annotation

    .line 458
    .local p2, "lightStateList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/lights/LightState;>;"
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 452
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->LOOP_LIMIT:I

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->loop_index:I

    .line 459
    iput-object p2, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->lightStateList:Ljava/util/List;

    .line 460
    iput p3, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->styleType:I

    .line 461
    # getter for: Lcom/android/server/lights/MiuiLightsService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/lights/MiuiLightsService;->access$2800(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/WorkSource;->set(I)V

    .line 462
    # getter for: Lcom/android/server/lights/MiuiLightsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/lights/MiuiLightsService;->access$2900(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/lights/MiuiLightsService;->access$2800(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 463
    return-void
.end method

.method private delayLocked(J)J
    .registers 11
    .param p1, "duration"    # J

    .line 509
    move-wide v0, p1

    .line 510
    .local v0, "durationRemaining":J
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_23

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    .line 514
    .local v4, "bedtime":J
    :cond_c
    :try_start_c
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 516
    goto :goto_11

    .line 515
    :catch_10
    move-exception v6

    .line 517
    :goto_11
    iget-boolean v6, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->mForceStop:Z

    if-eqz v6, :cond_16

    .line 518
    goto :goto_20

    .line 520
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 521
    cmp-long v6, v0, v2

    if-gtz v6, :cond_c

    .line 522
    :goto_20
    sub-long v2, p1, v0

    return-wide v2

    .line 524
    .end local v4    # "bedtime":J
    :cond_23
    return-wide v2
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 528
    monitor-enter p0

    .line 529
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2100(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightsThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->mForceStop:Z

    .line 530
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mThread:Lcom/android/server/lights/MiuiLightsService$LightsThread;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2100(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightsThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 531
    monitor-exit p0

    .line 532
    return-void

    .line 531
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public playLight(I)Z
    .registers 12
    .param p1, "styleType"    # I

    .line 486
    monitor-enter p0

    .line 487
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->lightStateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 488
    .local v0, "size":I
    const/4 v1, 0x0

    .line 489
    .local v1, "index":I
    :goto_8
    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->mForceStop:Z

    if-nez v2, :cond_62

    .line 490
    if-ge v1, v0, :cond_37

    .line 491
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->lightStateList:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    .local v3, "index":I
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "index":I
    check-cast v1, Lcom/android/server/lights/LightState;

    .line 492
    .local v1, "lightState":Lcom/android/server/lights/LightState;
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1300(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;

    move-result-object v4

    iget v5, v1, Lcom/android/server/lights/LightState;->colorARGB:I

    iget v6, v1, Lcom/android/server/lights/LightState;->flashMode:I

    iget v7, v1, Lcom/android/server/lights/LightState;->onMS:I

    iget v8, v1, Lcom/android/server/lights/LightState;->offMS:I

    iget v9, v1, Lcom/android/server/lights/LightState;->brightnessMode:I

    # invokes: Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V
    invoke-static/range {v4 .. v9}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$3000(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V

    .line 494
    iget v2, v1, Lcom/android/server/lights/LightState;->onMS:I

    iget v4, v1, Lcom/android/server/lights/LightState;->offMS:I

    add-int/2addr v2, v4

    int-to-long v4, v2

    invoke-direct {p0, v4, v5}, Lcom/android/server/lights/MiuiLightsService$LightsThread;->delayLocked(J)J

    .line 495
    .end local v1    # "lightState":Lcom/android/server/lights/LightState;
    nop

    .line 488
    move v1, v3

    goto :goto_8

    .line 495
    .end local v3    # "index":I
    .local v1, "index":I
    :cond_37
    const/4 v2, 0x1

    if-ne p1, v2, :cond_47

    iget v3, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->loop_index:I

    const/16 v4, 0x23

    if-ge v3, v4, :cond_47

    .line 496
    const/4 v1, 0x0

    .line 497
    iget v3, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->loop_index:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->loop_index:I

    goto :goto_8

    .line 499
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/lights/MiuiLightsService$LightsThread;->cancel()V

    .line 500
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1300(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->access$3000(Lcom/android/server/lights/MiuiLightsService$LightImpl;IIIII)V

    .line 501
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1300(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastLightStyle:I

    goto :goto_8

    .line 504
    .end local v0    # "size":I
    .end local v1    # "index":I
    :cond_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_66

    .line 505
    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->mForceStop:Z

    return v0

    .line 504
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0
.end method

.method public run()V
    .registers 5

    .line 467
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 468
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2900(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 470
    :try_start_d
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->turnoffBatteryLight()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1700(Lcom/android/server/lights/MiuiLightsService;)V

    .line 471
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->styleType:I

    invoke-virtual {p0, v0}, Lcom/android/server/lights/MiuiLightsService$LightsThread;->playLight(I)Z

    move-result v0

    .line 472
    .local v0, "finished":Z
    if-eqz v0, :cond_27

    .line 473
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->recoveryBatteryLight()V
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$1800(Lcom/android/server/lights/MiuiLightsService;)V

    .line 474
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->styleType:I

    const/4 v3, 0x0

    # invokes: Lcom/android/server/lights/MiuiLightsService;->reportLedEventLocked(IZII)V
    invoke-static {v1, v2, v3, v3, v3}, Lcom/android/server/lights/MiuiLightsService;->access$2000(Lcom/android/server/lights/MiuiLightsService;IZII)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_32

    .line 477
    .end local v0    # "finished":Z
    :cond_27
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2900(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    nop

    .line 479
    return-void

    .line 477
    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightsThread;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$2900(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
