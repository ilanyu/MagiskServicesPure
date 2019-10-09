.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .line 600
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 602
    # invokes: Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/util/TimingsTraceLog;

    move-result-object v0

    .line 605
    .local v0, "shutdownTimingsTraceLog":Landroid/util/TimingsTraceLog;
    const-string/jumbo v1, "phone"

    .line 606
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 609
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    :try_start_13
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_1e

    :cond_1a
    move v4, v2

    goto :goto_1f

    .line 615
    :catch_1c
    move-exception v4

    goto :goto_33

    .line 609
    :cond_1e
    :goto_1e
    move v4, v3

    .line 610
    .local v4, "radioOff":Z
    :goto_1f
    if-nez v4, :cond_3e

    .line 611
    const-string v5, "ShutdownThread"

    const-string v6, "Turning off cellular radios..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    # getter for: Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->access$400(Ljava/lang/String;)V

    .line 613
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_32} :catch_1c

    goto :goto_3e

    .line 615
    .end local v4    # "radioOff":Z
    :goto_33
    nop

    .line 616
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    nop

    .line 617
    .end local v4    # "ex":Landroid/os/RemoteException;
    move v4, v3

    goto :goto_3f

    .line 618
    .local v4, "radioOff":Z
    :cond_3e
    :goto_3e
    nop

    .line 617
    :goto_3f
    nop

    .line 620
    const-string v5, "ShutdownThread"

    const-string v6, "Waiting for Radio..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-wide v5, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 623
    .local v5, "delay":J
    :goto_4e
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_c9

    .line 624
    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 625
    iget v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v7, v7

    sub-long/2addr v7, v5

    long-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    mul-double/2addr v7, v9

    iget v9, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    .line 627
    .local v7, "status":I
    add-int/lit8 v7, v7, 0x6

    .line 628
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    const/4 v9, 0x0

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v8, v7, v9}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 631
    .end local v7    # "status":I
    :cond_74
    if-nez v4, :cond_ad

    .line 633
    :try_start_76
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v7
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7a} :catch_7d

    xor-int/2addr v7, v3

    move v4, v7

    .line 637
    goto :goto_86

    .line 634
    :catch_7d
    move-exception v7

    .line 635
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during radio shutdown"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    const/4 v4, 0x1

    .line 638
    .end local v7    # "ex":Landroid/os/RemoteException;
    :goto_86
    if-eqz v4, :cond_ad

    .line 639
    const-string v7, "ShutdownThread"

    const-string v8, "Radio turned off."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    # getter for: Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/power/ShutdownThread;->access$800(Ljava/lang/String;)V

    .line 641
    const-string v7, "ShutdownRadio"

    .line 642
    # getter for: Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$900()Landroid/util/ArrayMap;

    move-result-object v8

    # getter for: Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 646
    :cond_ad
    if-eqz v4, :cond_bb

    .line 647
    const-string v7, "ShutdownThread"

    const-string v8, "Radio shutdown complete."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v3, v7, v2

    .line 649
    goto :goto_c9

    .line 651
    :cond_bb
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 652
    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v5, v7, v9

    goto :goto_4e

    .line 654
    :cond_c9
    :goto_c9
    return-void
.end method
