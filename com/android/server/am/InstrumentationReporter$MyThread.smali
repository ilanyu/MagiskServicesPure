.class final Lcom/android/server/am/InstrumentationReporter$MyThread;
.super Ljava/lang/Thread;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/InstrumentationReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/InstrumentationReporter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/InstrumentationReporter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/InstrumentationReporter;

    .line 40
    iput-object p1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 41
    const-string v0, "InstrumentationReporter"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 48
    move v1, v0

    .line 51
    .local v1, "waited":Z
    :goto_5
    iget-object v2, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_a
    iget-object v3, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v3, v3, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 53
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    iget-object v4, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 54
    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_6e

    .line 69
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_84

    .line 71
    const/4 v1, 0x0

    .line 73
    move v2, v0

    .local v2, "i":I
    :goto_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6d

    .line 74
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/InstrumentationReporter$Report;

    .line 76
    .local v4, "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    :try_start_2b
    iget v5, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    if-nez v5, :cond_3b

    .line 80
    iget-object v5, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v6, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v7, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v8, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v5, v6, v7, v8}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    goto :goto_46

    .line 86
    :cond_3b
    iget-object v5, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v6, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v7, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v8, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v5, v6, v7, v8}, Landroid/app/IInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_46} :catch_47

    .line 92
    :goto_46
    goto :goto_6a

    .line 89
    :catch_47
    move-exception v5

    .line 90
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure reporting to instrumentation watcher: comp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " results="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v4    # "rep":Lcom/android/server/am/InstrumentationReporter$Report;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 94
    .end local v2    # "i":I
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :cond_6d
    goto :goto_5

    .line 55
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :cond_6e
    :goto_6e
    if-nez v1, :cond_7e

    .line 58
    :try_start_70
    iget-object v4, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v4, v4, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_79} :catch_7a
    .catchall {:try_start_70 .. :try_end_79} :catchall_84

    .line 60
    goto :goto_7b

    .line 59
    :catch_7a
    move-exception v4

    .line 61
    :goto_7b
    const/4 v1, 0x1

    .line 62
    :try_start_7c
    monitor-exit v2

    goto :goto_5

    .line 64
    :cond_7e
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iput-object v5, v0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    .line 66
    monitor-exit v2

    return-void

    .line 69
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/InstrumentationReporter$Report;>;"
    :catchall_84
    move-exception v0

    monitor-exit v2
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_84

    throw v0
.end method
