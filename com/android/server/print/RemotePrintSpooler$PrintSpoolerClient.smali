.class final Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;
.super Landroid/print/IPrintSpoolerClient$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintSpoolerClient"
.end annotation


# instance fields
.field private final mWeakSpooler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/print/RemotePrintSpooler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 3
    .param p1, "spooler"    # Lcom/android/server/print/RemotePrintSpooler;

    .line 923
    invoke-direct {p0}, Landroid/print/IPrintSpoolerClient$Stub;-><init>()V

    .line 924
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    .line 925
    return-void
.end method


# virtual methods
.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "printService"    # Landroid/content/ComponentName;

    .line 942
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 943
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_1e

    .line 944
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 946
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1300(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 948
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    goto :goto_1e

    .line 948
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 951
    .end local v1    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onAllPrintJobsHandled()V
    .registers 5

    .line 955
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 956
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_1a

    .line 957
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 959
    .local v1, "identity":J
    :try_start_e
    # invokes: Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1400(Lcom/android/server/print/RemotePrintSpooler;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 961
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    goto :goto_1a

    .line 961
    :catchall_15
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 964
    .end local v1    # "identity":J
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 6
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 929
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 930
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_1e

    .line 931
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 933
    .local v1, "identity":J
    :try_start_e
    # getter for: Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    invoke-static {v0}, Lcom/android/server/print/RemotePrintSpooler;->access$1300(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 935
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    goto :goto_1e

    .line 935
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 938
    .end local v1    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 6
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 968
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintSpooler;

    .line 969
    .local v0, "spooler":Lcom/android/server/print/RemotePrintSpooler;
    if-eqz v0, :cond_1a

    .line 970
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 972
    .local v1, "identity":J
    :try_start_e
    # invokes: Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    invoke-static {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->access$1500(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 974
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 975
    goto :goto_1a

    .line 974
    :catchall_15
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 977
    .end local v1    # "identity":J
    :cond_1a
    :goto_1a
    return-void
.end method
