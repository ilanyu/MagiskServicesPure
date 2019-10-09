.class Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
.super Ljava/lang/Thread;
.source "MiuiFakeGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportLocationThread"
.end annotation


# instance fields
.field private mLocation:Landroid/location/Location;

.field private mOnceRun:Z

.field private mPause:Z

.field private mStop:Z

.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .line 363
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    .line 364
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 366
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    .line 367
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    .line 368
    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mOnceRun:Z

    .line 369
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    .line 370
    return-void
.end method


# virtual methods
.method public letStop()V
    .registers 2

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    .line 392
    invoke-virtual {p0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->interrupt()V

    .line 393
    return-void
.end method

.method public reschedule()V
    .registers 3

    .line 385
    sget-boolean v0, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v0, :cond_c

    const-string v0, "MiuiGpsProvider"

    const-string/jumbo v1, "location thread reschedule"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    .line 387
    invoke-virtual {p0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->interrupt()V

    .line 388
    return-void
.end method

.method public run()V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$500(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 402
    :try_start_7
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/MiuiFakeGpsProvider;->mRptLocThreadRunning:Z
    invoke-static {v1, v2}, Lcom/android/server/MiuiFakeGpsProvider;->access$602(Lcom/android/server/MiuiFakeGpsProvider;Z)Z

    .line 403
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$500(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 404
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_59

    .line 405
    :goto_17
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-nez v0, :cond_58

    .line 406
    :goto_1b
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-nez v0, :cond_40

    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_40

    .line 407
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    # invokes: Lcom/android/server/MiuiFakeGpsProvider;->reportLocation(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$700(Lcom/android/server/MiuiFakeGpsProvider;Landroid/location/Location;)V

    .line 408
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mOnceRun:Z

    if-eqz v0, :cond_33

    .line 409
    return-void

    .line 412
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mFixIntervalMs:I
    invoke-static {v0}, Lcom/android/server/MiuiFakeGpsProvider;->access$800(Lcom/android/server/MiuiFakeGpsProvider;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_3e

    goto :goto_3f

    .line 413
    :catch_3e
    move-exception v0

    .line 415
    :goto_3f
    goto :goto_1b

    .line 418
    :cond_40
    iget-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-eqz v0, :cond_45

    .line 419
    return-void

    .line 423
    :cond_45
    :try_start_45
    const-string v0, "MiuiGpsProvider"

    const-string/jumbo v1, "report location pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_55} :catch_56

    goto :goto_57

    .line 425
    :catch_56
    move-exception v0

    .line 427
    :goto_57
    goto :goto_17

    .line 429
    :cond_58
    return-void

    .line 404
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public setLocationLocked(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "needInterrupt":Z
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_6

    .line 375
    const/4 v0, 0x1

    .line 377
    :cond_6
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mLocation:Landroid/location/Location;

    .line 378
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mPause:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mStop:Z

    if-eqz v1, :cond_12

    if-eqz v0, :cond_15

    .line 379
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->interrupt()V

    .line 381
    :cond_15
    return-void
.end method

.method public setOnceRun(Z)V
    .registers 2
    .param p1, "onceRun"    # Z

    .line 396
    iput-boolean p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->mOnceRun:Z

    .line 397
    return-void
.end method
